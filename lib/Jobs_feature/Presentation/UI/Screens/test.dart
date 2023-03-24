import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/services/services_locator.dart';
import '../../Controller/cubit/jobs_cubit.dart';
import 'jobs_screen.dart';

class className extends StatelessWidget {
  const className({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<JobsCubit>()..getJobs(),
        child: const Scaffold(
          body: JobsScreen(),


        ));
  }
}