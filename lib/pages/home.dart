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
import 'package:girlfriend_translator/service/repository/food_repo.dart';
import 'package:provider/provider.dart';
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
      backgroundColor: Colors.amberAccent,
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Profile(),
              Accordion(
                children: [
                  AccordionSection(
                    headerBackgroundColor: Colors.deepPurple,
                    headerBackgroundColorOpened: Colors.purple,
                    headerPadding: EdgeInsets.all(8.0),
                    leftIcon: Icon(Icons.add),
                    header: Container(
                        height: 50.0,
                        child: Center(child: Text('Word of the day', style: TextStyle(fontSize: 16.0, color: Colors.white),))),
                    content: Quote(),
                  ),
                  AccordionSection(
                      headerBackgroundColor: Colors.amber,
                      headerBackgroundColorOpened: Colors.purple,
                      headerPadding: EdgeInsets.all(8.0),
                      leftIcon: Icon(Icons.add),
                      header: Container(
                          height: 50.0,
                          child: Center(child: Text('Current Mood', style: TextStyle(fontSize: 16.0, color: Colors.black),))),
                      content: HerMood()
                  ),
                  AccordionSection(
                      headerBackgroundColor: Colors.deepPurple,
                      headerBackgroundColorOpened: Colors.purple,
                      headerPadding: EdgeInsets.all(8.0),
                      leftIcon: Icon(Icons.add),
                      header: Container(
                          height: 50.0,
                          child: Center(child: Text('Food', style: TextStyle(fontSize: 16.0, color: Colors.white),))),
                      content: Food()
                  ),
                  AccordionSection(
                      headerBackgroundColor: Colors.amber,
                      headerBackgroundColorOpened: Colors.purple,
                      headerPadding: EdgeInsets.all(8.0),
                      leftIcon: Icon(Icons.add),
                      header: Container(
                          height: 50.0,
                          child: Center(child: Text('Personality', style: TextStyle(fontSize: 16.0, ),))),
                      content: Personality()
                  ),
                  AccordionSection(
                      headerBackgroundColor: Colors.deepPurple,
                      headerBackgroundColorOpened: Colors.purple,
                      headerPadding: EdgeInsets.all(8.0),
                      leftIcon: Icon(Icons.add),
                      header: Container(
                          height: 50.0,
                          child: Center(child: Text('Interests', style: TextStyle(fontSize: 16.0, color: Colors.white),))),
                      content: Interests()
                  ),
                  AccordionSection(
                      headerBackgroundColor: Colors.amber,
                      headerBackgroundColorOpened: Colors.purple,
                      headerPadding: EdgeInsets.all(8.0),
                      leftIcon: Icon(Icons.add),
                      header: Container(
                          height: 50.0,
                          child: Center(child: Text('Music', style: TextStyle(fontSize: 16.0,),))),
                      content: Music()
                  ),
                  AccordionSection(
                      headerBackgroundColor: Colors.deepPurple,
                      headerBackgroundColorOpened: Colors.purple,
                      headerPadding: EdgeInsets.all(8.0),
                      leftIcon: Icon(Icons.add),
                      header: Container(
                        height: 50.0,
                          child: Center(child: Text('What I like About You', style: TextStyle(fontSize: 16.0, color: Colors.white),))),
                      content: Highlights()
                  ),
                ],
              ),
              SizedBox(height: 48.0,)
            ],)
      ),
    );
  }
}
