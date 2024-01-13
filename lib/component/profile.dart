import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.deepPurple
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: MediaQuery.of(context).size.width * .15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 16.0),
            width: MediaQuery.of(context).size.width * .55,
            child: const Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Name:'),
                    Text('Rhulani Peloeahae', style: TextStyle(fontWeight: FontWeight.bold)),
                    RichTxt(label: 'Birthday', user: '1 April'),
                    RichTxt(label: 'Boyfriend', user: 'Nicholas'),
                    RichTxt(label: 'Anniversary', user: '31 December')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RichTxt extends StatelessWidget {
  final String label;
  final String user;
  const RichTxt({super.key, required this.label, required this.user});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '${label}:',
        style: DefaultTextStyle.of(context).style,
        children:  <TextSpan>[
          TextSpan(text: '$user', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
