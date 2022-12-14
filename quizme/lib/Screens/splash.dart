
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizme/login_page/LoginPage.dart';
import 'package:quizme/quizmaker/quizMaker.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  FirebaseAuth auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
   Future.delayed(const Duration(seconds: 2),(){
     if(auth.currentUser == null){
       Navigator.pushAndRemoveUntil(
           context,
           MaterialPageRoute(builder: (context) => LoginPage()),
               (route) => false);
     }else{
       Navigator.pushAndRemoveUntil(
           context,
           MaterialPageRoute(builder: (context) => quiz_maker()),
               (route) => false);
     }
   });
   return Scaffold(
     body: Center(
       child: FlutterLogo(
         size: 80,
       ),
     ),
   );
  }
}
