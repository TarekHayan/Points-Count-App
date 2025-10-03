import 'package:count_points_app/logic/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'UI/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: HomePage(),
      ),
    );
  }
}
