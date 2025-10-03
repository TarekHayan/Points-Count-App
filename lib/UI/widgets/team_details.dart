import 'package:count_points_app/UI/widgets/custom_elevated_buttom.dart';
import 'package:count_points_app/constense.dart';
import 'package:count_points_app/logic/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamDetails extends StatefulWidget {
  const TeamDetails({super.key, required this.teamName});
  final String teamName;

  @override
  State<TeamDetails> createState() => _TeamDetailsState();
}

class _TeamDetailsState extends State<TeamDetails> {
  _TeamDetailsState();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Column(
          children: [
            Text(widget.teamName, style: TextStyle(fontSize: 40)),
            (widget.teamName == team1)
                ? Text(state.numA.toString(), style: TextStyle(fontSize: 200))
                : Text(state.numB.toString(), style: TextStyle(fontSize: 200)),

            CustomElevatedButtom(
              onPressed: () {
                (widget.teamName == team1)
                    ? context.read<CounterCubit>().incerementA(1)
                    : context.read<CounterCubit>().incerementB(1);
              },
              text: "Add 1 Point",
            ),

            SizedBox(height: 10),

            CustomElevatedButtom(
              onPressed: () {
                (widget.teamName == team1)
                    ? context.read<CounterCubit>().incerementA(2)
                    : context.read<CounterCubit>().incerementB(2);
              },
              text: "Add 2 Point",
            ),

            SizedBox(height: 10),

            CustomElevatedButtom(
              onPressed: () {
                (widget.teamName == team1)
                    ? context.read<CounterCubit>().incerementA(3)
                    : context.read<CounterCubit>().incerementB(3);
              },
              text: "Add 3 Point",
            ),
          ],
        );
      },
    );
  }
}
