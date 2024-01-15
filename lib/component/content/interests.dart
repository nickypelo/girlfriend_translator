import 'package:flutter/material.dart';

class Interests extends StatelessWidget {
  const Interests({super.key});

  static List<String> hobbies = ['Hiking', 'Cycling', 'Bowling', 'Animal watching', 'Fucking Nick'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(hobbies[index], style: TextStyle(fontSize: 14),),
            ) ;
          }
      ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/moreInfo', arguments: {
                    'title': 'Interests',
                    'description': hobbies,
                    'name': 'interests'
                  });
                },
                child: Text('show more'))
          ],
        )]
    );
  }
}

///
