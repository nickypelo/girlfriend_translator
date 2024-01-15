import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/highlight_model.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key});

  static List<String> hightlight = ['Smile', 'Personality', 'Eyes', 'Giggles', 'Titties'];

  @override
  Widget build(BuildContext context) {
    // access highlight data
    final highlight = Provider.of<List<HighlightModel>>(context);
    List<HighlightModel> highlightDisplay;

    highlight.length > 4 ? highlightDisplay=highlight.where((item) => highlight.indexOf(item)<4).toList() : highlightDisplay= highlight.toList();

    return Column(
      children: <Widget>[
        ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
            itemBuilder: (context, index){
            return ListTile(
                title: Text(highlightDisplay[index].ladyHighlight.toString(), style: TextStyle(fontSize: 14),));
            }
      ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: (){
                  print('Indeed');
                  Navigator.pushNamed(context, '/moreInfo', arguments: {
                    'title': 'What I Like About You.',
                    'description': highlight,
                    'name': 'highlight'
                  });
                },
                child: Text('show more'))
          ],
        )]
    );
  }
}
