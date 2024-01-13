import 'package:flutter/material.dart';

class Interests extends StatelessWidget {
  const Interests({super.key});

  static List<String> hobbies = ['Hiking', 'Cycling', 'Bowling', 'Animal watching'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: hobbies.length,
        shrinkWrap: true,
        itemBuilder: (context, index){
          return Text(hobbies[index]);
      }
    );
  }
}

///
