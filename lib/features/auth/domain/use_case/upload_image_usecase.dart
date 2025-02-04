import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:mobileapplicationdevelopment/app/usecase/usecase.dart';
import 'package:mobileapplicationdevelopment/core/error/failure.dart';
import 'package:mobileapplicationdevelopment/features/auth/domain/repository/auth_repository.dart';


class UploadImageParams {
  final File file;

  const UploadImageParams({
    required this.file,
  });
}

class UploadImageUsecase
    implements UseCaseWithParams<String, UploadImageParams> {
  final IAuthRepository _repository;

  UploadImageUsecase(this._repository);

  @override
  Future<Either<Failure, String>> call(UploadImageParams params) {
    return _repository.uploadProfilePicture(params.file);
  }
}
