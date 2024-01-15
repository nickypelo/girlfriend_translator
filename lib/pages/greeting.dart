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
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('MyPartner', style: TextStyle(fontSize: 28.0),),
                  Text('An indirect way to communicate with your woman')
                ],
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(16.0),
                height: MediaQuery.of(context).size.height * .5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Sign up and show your woman '),
                    Text('what you know about her'),
                    SizedBox(height: 28.0,),
                    Text("She has the chance to write down more."),
                    SizedBox(height: 20.0,),
                    Text("And tell you about her mood without being direct.")
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ARE YOU?', style: TextStyle(fontSize: 24.0),),
                  TextButton(
                    child: Text('Girlfriend', style: TextStyle(fontSize: 24.0),),
                    onPressed: (){},
                  ),
                  Text('OR', style: TextStyle(fontSize: 24.0),),
                  TextButton(
                    child: Text('Boyfriend', style: TextStyle(fontSize: 24.0),),
                    onPressed: (){
                      // Navigator.push(context, '/register');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
