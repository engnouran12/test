import 'package:get_it/get_it.dart';


import '../../Jobs_feature/Presentation/Controller/cubit/jobs_cubit.dart';
import '../../Jobs_feature/data/DataSource/getjobs.dart';
import '../../Jobs_feature/data/reposotorey/datarepojop.dart';
import '../../Jobs_feature/domain/reposotrey/job_feature.dart';
import '../../Jobs_feature/domain/use case/getjob.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///bloc

    sl.registerFactory(() => JobsCubit(sl()));

    /// Use Cases
    sl.registerLazySingleton(() => GEtAllJopUseCase(sl()));

    ///DataSource
    sl.registerLazySingleton<BaseDataSource>(() => DataSource());

    /// pository
    sl.registerLazySingleton<BaseJobsReposotrey>(() => JobReposotrey(sl()));

    ///

    //sl.registerLazySingleton<NoParameters>(() => NoParameters());
  }
}
