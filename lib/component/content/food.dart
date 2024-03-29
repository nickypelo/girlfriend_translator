import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:girlfriend_translator/model/food_model.dart';
import 'package:provider/provider.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    // final List<FoodModel> empty = [FoodModel(foodID: '1', ladyFoodPlace: '', ladyFoodItem1: '', ladyFoodItem2: '')];

    // access food data
    final food = Provider.of<List<FoodModel>>(context);
    List<FoodModel> foodDisplay;

    food.length > 3 ? foodDisplay=food.where((item) => food.indexOf(item)<3).toList() : foodDisplay= food.toList();
    return Container(
      child: Column(
        children: <Widget>[
          DataTable(
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
          rows:  foodDisplay.map((eish) => DataRow(
            cells: <DataCell>[
              DataCell(Text(eish.ladyFoodPlace.toString(), style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text(eish.ladyFoodItem1.toString())),
              DataCell(Text(eish.ladyFoodItem2.toString()))
            ],),).toList(),
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/moreInfo', arguments: {
                      'title': 'Food',
                      'description': food,
                      'name': 'food'
                    });
                  },
                  child: Text('show more'))
            ],
          )
        ]
      )
    );
  }
}
