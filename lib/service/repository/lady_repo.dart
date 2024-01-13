import 'package:cloud_firestore/cloud_firestore.dart';

class LadyRepo{

  final String uid;
  LadyRepo({required this.uid});

  // reference collection
  final CollectionReference ladyInfoCollection = FirebaseFirestore.instance.collection('ladyInfo');

  Future updateUserData(String ladyName, String ladyBirthDate, String anniversaryDate ) async{
    return await ladyInfoCollection.doc(uid).set({
      'ladyID': '1',
      'userID': uid,
      'ladyName': ladyName,
      'ladyBirthDate': ladyBirthDate,
      'anniversaryDate': anniversaryDate
    });
  }

}