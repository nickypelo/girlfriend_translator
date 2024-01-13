import 'package:firebase_auth/firebase_auth.dart';
import 'package:girlfriend_translator/model/user.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  // create user object based on firebase user
  AppUser? _userFromFirebaseUser(User user){
    return user != null ? AppUser(uid: user.uid) : null;
  }
  
  // sign in anonymously
  Future signInAnon() async{
    try{
      UserCredential result =  await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
  // sign in with email & Password
}
