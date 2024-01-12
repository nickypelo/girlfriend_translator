import 'package:flutter/material.dart';
import 'package:girlfriend_translator/utils/constants.dart';


class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: PageController(),
          children: const <Widget>[
            Center(
              child: Text('First Page'),
            ),
            Center(
              child: Text('Second Page'),
            ),
            Center(
              child: Text('Third Page'),
            ),
          ],
        ),
      ),
    );
  }
}
