import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:shaghal_app/Jobs_feature/domain/entities/jobs.dart';

import '../../../../core/usecase/base_usecase.dart';
import '../../../../core/utils/enums.dart';

import '../../../domain/use case/getjob.dart';
import 'jobs_state.dart';


class JobsCubit extends Cubit<JobsState> {
  final GEtAllJopUseCase getjobusecase;
 
  JobsCubit(this.getjobusecase) : super(const JobsState());
  
 

  //usecase to provide logic of ui in presentation layer

  FutureOr<void> getJobs() async {
    
   // emit(state.copyWith(getJopState: RequestState.loading));
    print(state.getJopState);
    final result = await getjobusecase.excuteGetJop() ;
    result.fold(
      (l) {
        emit(state.copyWith(
          getJopState: RequestState.error,
          message: l.message,
        ));
      },
      (r) {
        emit(state.copyWith(
          jobs: r,
          getJopState: RequestState.loaded,
        ));
      },
     
    );
     print(state.getJopState);
 
      // Close the cubit
      //close();
    
  
  }
 // close the Cubit after all the state changes have been emitted
    
 
  
}

