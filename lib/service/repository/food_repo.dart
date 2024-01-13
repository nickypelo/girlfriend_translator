import 'package:cloud_firestore/cloud_firestore.dart';

class FoodRepo{

  final String uid;
  FoodRepo({required this.uid});

  // reference collection
  final CollectionReference foodCollection = FirebaseFirestore.instance.collection('food');

  Future updateFoodData(String foodID, String wifeFoodPlace, String wifeFoodItem1, String wifeFoodItem2 ) async{
    return await foodCollection.doc(uid).set({
      'ladyID': '1',
      'foodId': foodID,
      'wifeFoodPlace': wifeFoodPlace,
      'wifeFoodItem1': wifeFoodItem1,
      'wifeFoodItem2': wifeFoodItem2
    });
  }

}