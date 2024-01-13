import 'package:cloud_firestore/cloud_firestore.dart';

class HighlightRepo{

  final String uid;
  HighlightRepo({required this.uid});

  // reference collection
  final CollectionReference highlightCollection = FirebaseFirestore.instance.collection('highlight');

  Future updateHighlightData(String highlightID, String wifeHighlight) async{
    return await highlightCollection.doc(uid).set({
      'ladyID': '1',
      'highlightID': highlightID,
      'wifeHighlight': wifeHighlight,
    });
  }

}