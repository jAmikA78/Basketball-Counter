import 'package:basketball_counter/Widgets/TeamWidget.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key});

  @override
  State<BodyWidget> createState() => _bodyWidgetState();
}

class _bodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamWidget(
                teamCnt: 0,
                teamName: 'Angels',
              ),
              const VerticalDivider(
                color: Colors.black,
              ),
              TeamWidget(
                teamCnt: 0,
                teamName: 'Tigers',
              ),
            ],
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
          ),
          onPressed: () {
            setState(() {});
          },
          child: const Text(
            'Reset',
            style: TextStyle(fontSize: 40),
          ),
        ),
        const Text(
          'App By jamika78',
        )
      ],
    );
  }
}
