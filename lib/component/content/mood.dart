import 'package:flutter/material.dart';

class HerMood extends StatelessWidget {
  HerMood({super.key});

  final List<String> moods   = ['Sad', 'Happy', 'Alone', 'Ecstatic', 'Spicy' ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Block(label: moods[0]),
        Block(label: moods[1]),
        Block(label: moods[2]),
        Block(label: moods[3]),
        Block(label: moods[4]),
        Block(label: moods[4]),
      ],
    );
  }
}

class Block extends StatelessWidget {
  const Block({super.key, required this.label});

  final String label;
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width * 0.125;

    return Container(
      width: size,
      height: size,
      color: Colors.purple,
      child: Center(
        child: GestureDetector(
          onTap: (){
            print('$label');
          },
          child: Text('$label', style: TextStyle(fontSize: 12.0, color: Colors.white),),
        ),
      ),
    );
  }
}
