import 'dart:async';
import 'package:chatbot/chatbot.dart';
import 'package:chatbot/home.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';




class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  //for making splash screen
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:3), (){
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Home() ));

    });
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    
      backgroundColor: Colors.black,
       body: Center(
         child: Column(
       
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
          
          Container(
          height: 200,
          width: 200,
          child: Image.asset('assets/bot/bot3.gif',
          fit: BoxFit.cover,
          ),
         // https://distok.top/stickers/754103543786504244/754109076933443614.gif
          ),
          Text("SUSTbot",
          
          style: TextStyle(
           fontSize: 60.0,
           fontWeight: FontWeight.bold,
           fontFamily: 'robopixies-new-font',
           color: Colors.green,
    
          ),
          
          ),
           Text('JUST KNOCK & GET',
                style:TextStyle(color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Athiti-Regular',
                ) ,
                
                
                ),
          //Container().skeleton(height: 10, width: 100,color: Vx.yellow700),
        SizedBox(
          height: 20,
        ),
       LinearProgressIndicator(
         color: Colors.yellow,
       minHeight: 10,
    
       valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
       ),
    
    
         ],
       
         ),
       ),
    
    
    
    
        
      ),
    );
  }
}