import 'custom_elevated_buttom.dart';
import 'package:flutter/material.dart';

class TeamDetails extends StatefulWidget {
  TeamDetails({super.key, required this.teamName, required this.pointsTeam});
  final String teamName;
  int pointsTeam;

  @override
  State<TeamDetails> createState() => _TeamDetailsState();
}

class _TeamDetailsState extends State<TeamDetails> {
  _TeamDetailsState();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.teamName, style: TextStyle(fontSize: 40)),
        Text(widget.pointsTeam.toString(), style: TextStyle(fontSize: 200)),

        CustomElevatedButtom(
          onPressed: () {
            widget.pointsTeam++;
            setState(() {});
          },
          text: "Add 1 Point",
        ),

        SizedBox(height: 10),

        CustomElevatedButtom(
          onPressed: () {
            widget.pointsTeam += 2;
            setState(() {});
          },
          text: "Add 2 Point",
        ),

        SizedBox(height: 10),

        CustomElevatedButtom(
          onPressed: () {
            widget.pointsTeam += 3;
            setState(() {});
          },
          text: "Add 3 Point",
        ),
      ],
    );
  }
}
