import 'package:dartz/dartz.dart';
import 'package:mobileapplicationdevelopment/app/usecase/usecase.dart';
import 'package:mobileapplicationdevelopment/core/error/failure.dart';
import 'package:mobileapplicationdevelopment/features/course/domain/entity/course_entity.dart';
import 'package:mobileapplicationdevelopment/features/course/domain/repository/course_repository.dart';

class GetAllCourseUsecase implements UsecaseWithoutParams<List<CourseEntity>> {
  final ICourseRepository _courseRepository;

  GetAllCourseUsecase({required ICourseRepository courseRepository})
      : _courseRepository = courseRepository;

  @override
  Future<Either<Failure, List<CourseEntity>>> call() {
    return _courseRepository.getCourses();
  }
}
