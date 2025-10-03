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
              TeamDetails(teamName: "Team A", pointsTeam: pointsTeamA),
              //-----------------------------------------------------------------
              SizedBox(
                height: 500,
                child: VerticalDivider(thickness: 2, indent: 40),
              ),
              //-------------------------------------------------------------------
              TeamDetails(teamName: "Team B", pointsTeam: pointTeamB),
            ],
          ),
          SizedBox(height: 150),
          CustomElevatedButtom(
            onPressed: () {
              pointsTeamA = 0;
              pointTeamB = 0;
              setState(() {});
            },
            text: "Reset",
          ),
        ],
      ),
    );
  }
}
