import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobileapplicationdevelopment/core/error/failure.dart';
import 'package:mobileapplicationdevelopment/features/auth/domain/use_case/login_usecase.dart';
import 'package:mocktail/mocktail.dart';

import 'repository_mock.dart';
import 'token_mock.dart';

void main() {
  late MockAuthRepository mockAuthRepository;
  late MockTokenSharedPrefs mockTokenSharedPrefs;
  late LoginUseCase loginUseCase;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    mockTokenSharedPrefs = MockTokenSharedPrefs();
    loginUseCase = LoginUseCase(mockAuthRepository, mockTokenSharedPrefs);

    // Register fallback values for mocktail
    registerFallbackValue(const LoginParams(email: '', password: ''));
  });

  group('LoginUseCase Tests', () {
    const email = 'test@example.com';
    const password = 'password123';
    const token = 'mockToken';

    test('should return token and save it when login is successful', () async {
      // Arrange
      when(() => mockAuthRepository.loginCustomer(any(), any()))
          .thenAnswer((_) async => Right(token));
      when(() => mockTokenSharedPrefs
              .getToken()) 
          .thenAnswer((_) async => Right(token));
      when(() => mockTokenSharedPrefs
              .saveToken(any())) 
          .thenAnswer((_) async => Right(unit)); 

      // Act
      final result = await loginUseCase(
          const LoginParams(email: email, password: password));

      // Assert
      expect(result, Right(token));
      verify(() => mockAuthRepository.loginCustomer(email, password)).called(1);
      verify(() => mockTokenSharedPrefs.saveToken(token)).called(1);
    });

    test('should return failure when login fails', () async {
      // Arrange
      final failure = ApiFailure(message: "Login failed");
      when(() => mockAuthRepository.loginCustomer(email, password))
          .thenAnswer((_) async => Left(failure));

      // Act
      final result = await loginUseCase(
          const LoginParams(email: email, password: password));

      // Assert
      expect(result, Left(failure));
      verify(() => mockAuthRepository.loginCustomer(email, password)).called(1);
      verifyNever(() => mockTokenSharedPrefs.saveToken(any()));
    });
  });
}
