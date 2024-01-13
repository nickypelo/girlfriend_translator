import 'package:flutter/material.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key});

  static List<String> hightlight = ['Smile', 'Personality', 'Titties', 'Voice', 'Giggles', 'Eyes'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: hightlight.length,
        itemBuilder: (context, index){
        return Text(hightlight[index]);
        }
    );
  }
}
