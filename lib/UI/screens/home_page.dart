import 'package:count_points_app/constense.dart';
import 'package:count_points_app/logic/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/custom_elevated_buttom.dart';
import '../widgets/team_details.dart';
import 'package:flutter/material.dart';

int pointsTeamA = 0;
int pointTeamB = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Points Counter",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamDetails(teamName: team1),
              //-----------------------------------------------------------------
              SizedBox(
                height: 500,
                child: VerticalDivider(thickness: 2, indent: 40),
              ),
              //-------------------------------------------------------------------
              TeamDetails(teamName: team2),
            ],
          ),
          SizedBox(height: 150),
          CustomElevatedButtom(
            onPressed: () {
              context.read<CounterCubit>().reset();
            },
            text: "Reset",
          ),
        ],
      ),
    );
  }
}
