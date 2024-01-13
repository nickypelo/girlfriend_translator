import 'package:flutter/material.dart';

//3rd party packages
import 'package:accordion/accordion.dart';

// local imports
import 'package:girlfriend_translator/component/profile.dart';
import 'package:girlfriend_translator/component/content/mood.dart';
import 'package:girlfriend_translator/component/content/music.dart';
import 'package:girlfriend_translator/component/content/quote.dart';
import 'package:girlfriend_translator/component/content/about.dart';
import 'package:girlfriend_translator/component/content/food.dart';
import 'package:girlfriend_translator/component/content/hightlight.dart';
import 'package:girlfriend_translator/component/content/interests.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static List<String> names = ['Zamaswazi', 'Mantapela', 'Tadiwa'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Profile(),
                Accordion(
                  children: [
                    AccordionSection(
                      headerPadding: EdgeInsets.all(8.0),
                      leftIcon: Icon(Icons.add),
                      header: Text('Word of the day', style: TextStyle(fontSize: 16.0, color: Colors.white),),
                      content: Quote(),
                    ),
                    AccordionSection(
                        headerPadding: EdgeInsets.all(8.0),
                        leftIcon: Icon(Icons.add),
                        header: Text('Current Mood', style: TextStyle(fontSize: 16.0, color: Colors.white),),
                        content: HerMood()
                    ),
                    AccordionSection(
                        headerPadding: EdgeInsets.all(8.0),
                        leftIcon: Icon(Icons.add),
                        header: Text('Food', style: TextStyle(fontSize: 16.0, color: Colors.white),),
                        content: Food()
                    ),
                    AccordionSection(
                        headerPadding: EdgeInsets.all(8.0),
                        leftIcon: Icon(Icons.add),
                        header: Text('Personality', style: TextStyle(fontSize: 16.0, color: Colors.white),),
                        content: Personality()
                    ),
                    AccordionSection(
                        headerPadding: EdgeInsets.all(8.0),
                        leftIcon: Icon(Icons.add),
                        header: Text('Interests', style: TextStyle(fontSize: 16.0, color: Colors.white),),
                        content: Interests()
                    ),
                    AccordionSection(
                        headerPadding: EdgeInsets.all(8.0),
                        leftIcon: Icon(Icons.add),
                        header: Text('Music', style: TextStyle(fontSize: 16.0, color: Colors.white),),
                        content: Music()
                    ),
                    AccordionSection(
                        headerPadding: EdgeInsets.all(8.0),
                        leftIcon: Icon(Icons.add),
                        header: Text('What I like About You', style: TextStyle(fontSize: 16.0, color: Colors.white),),
                        content: Highlights()
                    ),
                  ],
                ),
              ],)
        ),
      ),
    );
  }
}
