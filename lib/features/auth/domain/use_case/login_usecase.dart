import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mobileapplicationdevelopment/app/shared_prefs/token_shared_prefs.dart';
import 'package:mobileapplicationdevelopment/app/usecase/usecase.dart';
import 'package:mobileapplicationdevelopment/core/error/failure.dart';
import 'package:mobileapplicationdevelopment/features/auth/domain/repository/auth_repository.dart';

class LoginParams extends Equatable {
  final String email;
  final String password;

  const LoginParams({
    required this.email,
    required this.password,
  });

  // Initial Constructor
  const LoginParams.initial()
      : email = '',
        password = '';

  @override
  List<Object> get props => [email, password];
}

class LoginUseCase implements UseCaseWithParams<String, LoginParams> {
  final IAuthRepository repository;
  final TokenSharedPrefs tokenSharedPrefs;

  LoginUseCase(this.repository, this.tokenSharedPrefs);

  @override
  Future<Either<Failure, String>> call(LoginParams params) async {
    final loginResult =
        await repository.loginCustomer(params.email, params.password);

    if (loginResult.isRight()) {
      final token = loginResult.getOrElse(() => '');
      await tokenSharedPrefs.saveToken(token);
    }

    return loginResult; // ✅ Now returns the correct type
  }
}
