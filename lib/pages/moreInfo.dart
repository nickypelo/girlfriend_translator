import 'package:flutter/material.dart';
import 'package:girlfriend_translator/component/content/music.dart';
import 'package:girlfriend_translator/forms/food_update.dart';
import 'package:girlfriend_translator/forms/interest_update.dart';
import 'package:girlfriend_translator/forms/personality_update.dart';
import 'package:girlfriend_translator/model/food_model.dart';

import '../forms/music_update.dart';

class MoreInfo extends StatelessWidget {
  const MoreInfo({super.key});

  static Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>;

    String formChecker = data['name'];
    void _showAddPanel(){
      showDialog(context: context, builder: (context){
        return Dialog(
          child: formChecker == 'interests'
              ? InterestUpdate()
              : formChecker == 'music'
              ? MusicUpdate()
              : formChecker == 'personality'
              ? PersonalityUpdate()
              : FoodUpdate()
        );
      });
    }
    return Scaffold(
      backgroundColor: Colors.purple[100],
      floatingActionButton:
      formChecker != 'about' && formChecker != 'highlight' && formChecker != 'myMusic'
      ? FloatingActionButton(
        child: Text('Add'),
        onPressed: (){
          _showAddPanel();
        },
      )
      : null,
      appBar: AppBar(
        title: Text(data['title'], style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white,),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
        decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: Colors.black),
          borderRadius: BorderRadius.circular(12.0)
        ),
        child: Column(
          children: [
             data['description'] is String
                ? Text(
              data['description'],
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            )
                : data['description'] is List<FoodModel>
                ? FoodTable(vibe: data['description'] as List<FoodModel>) // Cast to List<FoodModel>
                : ListView.builder(
                    itemCount: data['description'].length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(data['description'][index]), // Wrap title in Text
                    ),
                  ),
              ],
        ),
      ),
    );
  }
}

// for food list
class FoodTable extends StatelessWidget {
  const FoodTable({super.key, required this.vibe});

  final List<FoodModel> vibe;
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Expanded(
          child: Text('Place', style: TextStyle(fontWeight: FontWeight.bold),),
        )),
        DataColumn(label: Expanded(
          child: Text('Item 1', style: TextStyle(fontWeight: FontWeight.bold),),
        )),
        DataColumn(label: Expanded(
          child: Text('Item 2', style: TextStyle(fontWeight: FontWeight.bold),),
        ))
      ],
      rows:  vibe.map((eish) => DataRow(
              cells: <DataCell>[
              DataCell(Text(eish.ladyFoodPlace.toString(), style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text(eish.ladyFoodItem1.toString())),
              DataCell(Text(eish.ladyFoodItem2.toString()))
              ],),).toList(),
    );
  }
}

