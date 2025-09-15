import 'package:flutter/material.dart';

void main() {
  runApp(Points_counter());
}

int pointsTeamA = 0;
int pointTeamB = 0;

class Points_counter extends StatefulWidget {
  const Points_counter({super.key});

  @override
  State<Points_counter> createState() => _Points_counterState();
}

class _Points_counterState extends State<Points_counter> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Points Counter", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Team A", style: TextStyle(fontSize: 40)),
                    Text("$pointsTeamA", style: TextStyle(fontSize: 200)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: LinearBorder(),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(70, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          pointsTeamA++;
                        });
                      },
                      child: Text(
                        "Add 1 point",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                    SizedBox(height: 10),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: LinearBorder(),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(70, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          pointsTeamA += 2;
                        });
                      },
                      child: Text(
                        "Add 2 point",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                    SizedBox(height: 10),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: LinearBorder(),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(70, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          pointsTeamA += 3;
                        });
                      },
                      child: Text(
                        "Add 3 point",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 500,
                  child: VerticalDivider(thickness: 2, indent: 40),
                ),
                //--------------------------------------------------------------------
                Column(
                  children: [
                    Text("Team B", style: TextStyle(fontSize: 40)),
                    Text("$pointTeamB", style: TextStyle(fontSize: 200)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: LinearBorder(),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(70, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          pointTeamB++;
                        });
                      },
                      child: Text(
                        "Add 1 point",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                    SizedBox(height: 10),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: LinearBorder(),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(70, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          pointTeamB += 2;
                        });
                      },
                      child: Text(
                        "Add 2 point",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),

                    SizedBox(height: 10),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: LinearBorder(),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(70, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          pointTeamB += 3;
                        });
                      },
                      child: Text(
                        "Add 3 point",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 150),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: LinearBorder(),
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 40),
              ),
              onPressed: () {
                setState(() {
                  pointsTeamA = 0;
                  pointTeamB = 0;
                });
              },
              child: Text("Reset", style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
