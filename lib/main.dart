import 'package:flutter/material.dart';
import 'package:learnerspace_bugetapp/authentication/login.dart';
import 'package:learnerspace_bugetapp/authentication/register.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/register' : (context) => Register()
      },
      home: LogIn(),
    );
  }
}

