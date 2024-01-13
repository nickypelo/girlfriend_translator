import 'package:flutter/material.dart';

class Personality extends StatelessWidget {
  const Personality({super.key});

  final String description = "A lady who is trying to figure herself out and enjoy life as best as she can. "
      "Goal driven with a knack for solving mysteries. An Empath who feels strongly about life (both animals and people. Playful in nature"
      "when with friends";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('What I see.', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('$description')
        ],
      ),
    );
  }
}
