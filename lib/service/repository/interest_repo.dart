import 'package:cloud_firestore/cloud_firestore.dart';

class InterestRepo{

  final String uid;
  InterestRepo({required this.uid});

  // reference collection
  final CollectionReference interestCollection = FirebaseFirestore.instance.collection('interest');

  Future updateInterestData(String interestID, String ladyInterests) async{
    return await interestCollection.doc(uid).set({
      'ladyID': '1',
      'interestID': interestID,
      'ladyInterests': ladyInterests,
    });
  }
}