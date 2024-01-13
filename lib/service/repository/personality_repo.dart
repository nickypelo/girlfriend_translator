import 'package:cloud_firestore/cloud_firestore.dart';

class PersonalityRepo{

  final String uid;
  PersonalityRepo({required this.uid});

  // reference collection
  final CollectionReference personalityCollection = FirebaseFirestore.instance.collection('personality');

  Future updatePersonalityData(String personalityID, String ladyPersonalityDescription) async{
    return await personalityCollection.doc(uid).set({
      'ladyID': '1',
      'personalityID': personalityID,
      'ladyPersonalityDescription': ladyPersonalityDescription,
    });
  }
}