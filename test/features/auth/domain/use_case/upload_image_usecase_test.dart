import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobileapplicationdevelopment/core/error/failure.dart';
import 'package:mobileapplicationdevelopment/features/auth/domain/use_case/upload_image_usecase.dart';
import 'package:mocktail/mocktail.dart';

import 'repository_mock.dart';

void main() {
  late MockAuthRepository mockAuthRepository;
  late UploadImageUsecase uploadImageUsecase;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    uploadImageUsecase = UploadImageUsecase(mockAuthRepository);

    // Register fallback value for mocktail
    registerFallbackValue(File('test_image.jpg'));
  });

  group('UploadImageUsecase Tests', () {
    final file = File('test_image.jpg');
    const uploadedImageUrl = "https://example.com/profile.jpg";

    test('should return image URL when upload is successful', () async {
      // Arrange
      when(() => mockAuthRepository.uploadProfilePicture(file))
          .thenAnswer((_) async => const Right(uploadedImageUrl));

      // Act
      final result = await uploadImageUsecase(UploadImageParams(file: file));

      // Assert
      expect(result, const Right(uploadedImageUrl));
      verify(() => mockAuthRepository.uploadProfilePicture(file)).called(1);
    });

    test('should return failure when upload fails', () async {
      // Arrange
      final failure = ApiFailure(message: "Upload failed");
      when(() => mockAuthRepository.uploadProfilePicture(file))
          .thenAnswer((_) async => Left(failure));

      // Act
      final result = await uploadImageUsecase(UploadImageParams(file: file));

      // Assert
      expect(result, Left(failure));
      verify(() => mockAuthRepository.uploadProfilePicture(file)).called(1);
    });
  });
}
