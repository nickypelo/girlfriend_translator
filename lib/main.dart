import 'package:flutter/material.dart';
import 'package:girlfriend_translator/pages/greeting.dart';
import 'package:girlfriend_translator/pages/home.dart';

//firebase and provider
import 'package:firebase_core/firebase_core.dart';
import 'package:girlfriend_translator/pages/wrapper.dart';
import 'package:girlfriend_translator/service/auth/authService.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

import 'model/user.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
      value: AuthService().user,
      initialData: null,
      catchError: (_,__){},
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Wrapper(),
      ),
    );
  }
}
