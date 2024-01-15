import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:girlfriend_translator/model/food_model.dart';
import 'package:provider/provider.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {

    // final List<FoodModel> empty = [FoodModel(foodID: '1', ladyFoodPlace: '', ladyFoodItem1: '', ladyFoodItem2: '')];

    final food = Provider.of<List<FoodModel>>(context)[0];

    // access user

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
          rows:  <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text("McDonald's", style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text("McTasty")),
              DataCell(Text("McFlurry"))
            ],),
              DataRow(cells: <DataCell>[
                DataCell(Text(food.ladyFoodPlace.toString(), style: TextStyle(fontWeight: FontWeight.bold),)),
                DataCell(Text(food.ladyFoodItem1.toString())),
                DataCell(Text(food.ladyFoodItem2.toString()))
                ],
            )
          ],
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/moreInfo', arguments: {
                      'title': 'Food',
                      'description': [FoodModel(ladyFoodPlace: 'Kasi', ladyFoodItem1: 'Braai meat', ladyFoodItem2: 'Kota')],
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
