import 'package:dartz/dartz.dart';
import 'package:mobileapplicationdevelopment/app/usecase/usecase.dart';
import 'package:mobileapplicationdevelopment/core/error/failure.dart';
import 'package:mobileapplicationdevelopment/features/batch/domain/entity/batch_entity.dart';
import 'package:mobileapplicationdevelopment/features/batch/domain/repository/batch_repository.dart';

class GetAllBatchUseCase implements UsecaseWithoutParams<List<BatchEntity>> {
  final IBatchRepository batchRepository;

  GetAllBatchUseCase({required this.batchRepository});

  @override
  Future<Either<Failure, List<BatchEntity>>> call() {
    return batchRepository.getBatches();
  }
}
