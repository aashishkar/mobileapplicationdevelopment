import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:wise_academy/core/error/failure.dart';
import 'package:wise_academy/features/auth/data/data_source/remote_data_source/auth_remote_datasource.dart';
import 'package:wise_academy/features/auth/domain/entity/auth_entity.dart';
import 'package:wise_academy/features/auth/domain/repository/auth_repository.dart';

class AuthRemoteRepository implements IAuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRemoteRepository(this._authRemoteDataSource);

  @override
  Future<Either<Failure, void>> registerCustomer(AuthEntity customer) async {
    try {
      await _authRemoteDataSource.registerCustomer(customer);
      return Right(null);
    } catch (e) {
      return Left(ApiFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthEntity>> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> loginCustomer(
      String email, String password) async {
    try {
      final token = await _authRemoteDataSource.loginCustomer(email, password);
      return Right(token);
    } catch (e) {
      return Left(ApiFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> uploadProfilePicture(File file) async {
    try {
      final imageName = await _authRemoteDataSource.uploadProfilePicture(file);
      return Right(imageName);
    } catch (e) {
      return Left(ApiFailure(message: e.toString()));
    }
  }
}
