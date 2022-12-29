

import 'dart:ui';
import 'package:bubble/bubble.dart';
import 'package:chatbot/chatbot.dart';
import 'package:chatbot/login.dart';
import 'package:chatbot/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:intl/intl.dart';
import 'package:firebase_core/firebase_core.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
 
 

 
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
       
       debugShowCheckedModeBanner: false,
      // home :Splash(),
      //calling log in frame
       home: LogIn(),
      
      
    

     );
    



  }
}