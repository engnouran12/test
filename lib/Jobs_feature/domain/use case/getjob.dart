import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';

import '../entities/jobs.dart';
import '../reposotrey/job_feature.dart';

class GEtAllJopUseCase 
{
  final BaseJobsReposotrey jobRepository;

  GEtAllJopUseCase(this.jobRepository);
 
  Future<Either<Failure, List<Jobs>>> excuteGetJop()async {
    return await jobRepository.getAllJobs();
  }

}