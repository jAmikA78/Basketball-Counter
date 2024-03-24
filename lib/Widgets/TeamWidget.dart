import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TeamWidget extends StatefulWidget {
  String teamName;
  int teamCnt;
  TeamWidget({required this.teamName, required this.teamCnt, super.key});

  @override
  State<TeamWidget> createState() => _TeamWidgetState();
}

class _TeamWidgetState extends State<TeamWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          widget.teamName,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        Text(
          widget.teamCnt.toString(),
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
          ),
          onPressed: () {
            setState(() {
              widget.teamCnt++;
            });
          },
          child: const Text(
            '+1 point',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
          ),
          onPressed: () {
            setState(() {
              widget.teamCnt += 2;
            });
          },
          child: const Text(
            '+2 point',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
          ),
          onPressed: () {
            setState(() {
              widget.teamCnt += 3;
            });
          },
          child: const Text(
            '+3 point',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
