import 'package:equatable/equatable.dart';

import '../../../../core/utils/enums.dart';
import '../../../domain/entities/jobs.dart';

//make state using enum to generallization
class JobsState extends Equatable {
  final List<Jobs> jobs;
  final RequestState getJopState;
  final String message;
  const JobsState({
    this.jobs = const [],
    this.getJopState = RequestState.loading,
    this.message = '',
  });

  JobsState copyWith(
          {List<Jobs>? jobs,
           RequestState? getJopState,
            String? message}) =>
      JobsState(
        jobs: jobs ?? this.jobs,
        getJopState: getJopState ?? this.getJopState,
        message: message ?? this.message,
      );

  @override
  List<Object?> get props => [jobs, getJopState, message];
}
