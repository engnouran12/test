import 'package:equatable/equatable.dart';

import 'package:dartz/dartz.dart';
import 'package:shaghal_app/Jobs_feature/domain/entities/jobs.dart';
import 'package:shaghal_app/core/error/failure.dart';

import '../reposotrey/job_feature.dart';

class SearcgJobUseCase {
  final BaseJobsReposotrey baseJobsReposotrey;

  SearcgJobUseCase(this.baseJobsReposotrey);

  Future<Either<Failure, List<Jobs>>> searchjob(
      String parameters) async {
    return await baseJobsReposotrey.getJobsByName(parameters);
      
  }
}

class SearchNameParameter extends Equatable {
  final String name;

  const SearchNameParameter(this.name);

  @override
  List<Object?> get props => [name];
}
