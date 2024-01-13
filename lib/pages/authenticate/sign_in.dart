import 'package:flutter/material.dart';
import 'package:girlfriend_translator/service/auth/authService.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ElevatedButton(
          child: Text('Sign In', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,)),
          onPressed: () async{
            dynamic result = await _auth.signInAnon();
            if(result == null){
              print('It could not be done');
            }else{
              print('We are In!');
              print(result.uid);
            }
          },
        ),
      ),
    );
  }
}
