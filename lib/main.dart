import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_app/screens/chat_page.dart';
import 'package:flutter_chat_app/screens/login_page.dart';
import 'package:flutter_chat_app/screens/register_page.dart';
// Import the generated file
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'loginpage',
      routes: {
        LoginPage.id:(context)=>LoginPage(),
      RegisterPage.id:(context)=>RegisterPage(),
      ChatPage.id:(context)=>ChatPage(),
      },
    );
  }
}


