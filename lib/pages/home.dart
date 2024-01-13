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
import '../service/auth/authService.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Text('logout'),
          onPressed: () async{
            await _auth.logoff();
          }
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Profile(),
                Accordion(
                  children: [
                    AccordionSection(
                      headerBackgroundColor: Colors.white,
                      headerPadding: EdgeInsets.all(8.0),
                      leftIcon: Icon(Icons.add),
                      header: Text('Word of the day', style: TextStyle(fontSize: 16.0,),),
                      content: Quote(),
                    ),
                    AccordionSection(
                        headerBackgroundColor: Colors.white,
                        headerPadding: EdgeInsets.all(8.0),
                        leftIcon: Icon(Icons.add),
                        header: Text('Current Mood', style: TextStyle(fontSize: 16.0,),),
                        content: HerMood()
                    ),
                    AccordionSection(
                        headerBackgroundColor: Colors.white,
                        headerPadding: EdgeInsets.all(8.0),
                        leftIcon: Icon(Icons.add),
                        header: Text('Food', style: TextStyle(fontSize: 16.0,),),
                        content: Food()
                    ),
                    AccordionSection(
                        headerBackgroundColor: Colors.white,
                        headerPadding: EdgeInsets.all(8.0),
                        leftIcon: Icon(Icons.add),
                        header: Text('Personality', style: TextStyle(fontSize: 16.0,),),
                        content: Personality()
                    ),
                    AccordionSection(
                        headerBackgroundColor: Colors.white,
                        headerPadding: EdgeInsets.all(8.0),
                        leftIcon: Icon(Icons.add),
                        header: Text('Interests', style: TextStyle(fontSize: 16.0),),
                        content: Interests()
                    ),
                    AccordionSection(
                        headerBackgroundColor: Colors.white,
                        headerPadding: EdgeInsets.all(8.0),
                        leftIcon: Icon(Icons.add),
                        header: Text('Music', style: TextStyle(fontSize: 16.0),),
                        content: Music()
                    ),
                    AccordionSection(
                        headerBackgroundColor: Colors.white,
                        headerPadding: EdgeInsets.all(8.0),
                        leftIcon: Icon(Icons.add),
                        header: Text('What I like About You', style: TextStyle(fontSize: 16.0),),
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
