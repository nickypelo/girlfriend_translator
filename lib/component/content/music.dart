import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Accordion(
        children: [
          AccordionSection(
              headerPadding: EdgeInsets.all(8.0),
              leftIcon: Icon(Icons.add),
              header: Text('Recommended', style: TextStyle(fontSize: 16.0, color: Colors.white),),
              content: Recommended()
          ),
          AccordionSection(
              headerPadding: EdgeInsets.all(8.0),
              leftIcon: Icon(Icons.add),
              header: Text('Your Favorite', style: TextStyle(fontSize: 16.0, color: Colors.white),),
              content: YourFavorite()
          ),
        ]
    );
  }
}

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      artist: ['Joey Badass', 'Guilty Simpson'],
      song: ['Show Me', 'I must love you'],
    );
  }
}

class YourFavorite extends StatelessWidget {
  const YourFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      artist: ['Q', 'Kali Uchis'],
      song: ['Presence', 'Deserve Me'],
    );
  }
}


//Structure for the music
class Table extends StatelessWidget {
  final List<String> artist;
  final List<String> song;

  const Table({super.key, required this.artist, required this.song});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(label: Expanded(
              child: Text('Artist', style: TextStyle(fontWeight: FontWeight.bold),),
            )),
            DataColumn(label: Expanded(
              child: Text('Song', style: TextStyle(fontWeight: FontWeight.bold),),
            )),
          ],
          rows:  <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text('${artist[0]}', style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('${song[0]}')),
            ],),
            DataRow(cells: <DataCell>[
              DataCell(Text('${artist[1]}', style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text('${song[1]}')),
            ],
            )
          ],
        )
    );
  }
}


