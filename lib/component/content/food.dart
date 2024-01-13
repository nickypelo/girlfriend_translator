import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(
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
        rows: const <DataRow>[
          DataRow(cells: <DataCell>[
            DataCell(Text("McDonald's", style: TextStyle(fontWeight: FontWeight.bold),)),
            DataCell(Text("McTasty")),
            DataCell(Text("McFlurry"))
          ],),
            DataRow(cells: <DataCell>[
              DataCell(Text("Kasi", style: TextStyle(fontWeight: FontWeight.bold),)),
              DataCell(Text("Braai Meat")),
              DataCell(Text("Kota"))
              ],
          )
        ],
      )
    );
  }
}
