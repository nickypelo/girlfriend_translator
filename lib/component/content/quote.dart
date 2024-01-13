import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  const Quote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('John 3:16', style: TextStyle(fontWeight: FontWeight.bold),),
          Text('For God so loved the world, that he gave his only begotten Son, that whosoever believeth in him should not perish, but have everlasting life.')
        ],
      ),
    );
  }
}
