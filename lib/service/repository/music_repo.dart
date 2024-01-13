import 'package:cloud_firestore/cloud_firestore.dart';

class MusicRepo{

  final String uid;
  MusicRepo({required this.uid});

  // reference collection
  final CollectionReference musicCollection = FirebaseFirestore.instance.collection('music');

  Future updateMusicData(String musicID, String musicType, String artist, String songName ) async{
    return await musicCollection.doc(uid).set({
      'ladyID': '1',
      'musicID': musicID,
      'musicType': musicType,
      'artist': artist,
      'songName': songName
    });
  }

}