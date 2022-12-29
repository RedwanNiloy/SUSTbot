import 'package:avatar_glow/avatar_glow.dart';
import 'package:chatbot/chatbot.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;


class Speech extends StatefulWidget {
  const Speech({Key? key}) : super(key: key);

  @override
  _SpeechState createState() => _SpeechState();
}

class _SpeechState extends State<Speech> {

stt.SpeechToText _speech=new stt.SpeechToText();
bool _isListening=false;
String _textSpeech="Press the button to speak";

void onListen()async
{
  if(!_isListening){
    bool available =await _speech.initialize(
      onStatus: (val)=>print('onStatus:$val'),
      onError: (val)=>print('onError:$val'),
    );
     if(available)
       {
         setState(() {
           _isListening=true;
         });
         
         _speech.listen(
           onResult: (val)=>setState(() {
             _textSpeech=val.recognizedWords;
          
             })
         );
         

       }
     else{
       setState(() {
         _isListening=false;
         _speech.stop();
       });
     }




  }
   
_isListening=false;

}


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _speech=stt.SpeechToText();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        glowColor: Colors.blue,
        endRadius: 80,
        animate: true,
       // duration: Duration(milliseconds: 20000),
        //repeatPauseDuration: Duration(milliseconds: 100),
        //repeat: true,
        child: FloatingActionButton(
          onPressed: (){
           onListen();
            //_isListening=true;
               _isListening=true;
             print(_textSpeech);
              print("tftdytd");
            _textSpeech="Now speak ";
          },
          child: Icon(Icons.mic),
        ),
      ),
      body:SingleChildScrollView(
        reverse: true,
        child:Container(
          padding: EdgeInsets.fromLTRB(15,15,15,150),
          child: Text(_textSpeech,
          style: TextStyle(
            fontSize: 30,
          ),
          ),
        )
      )


    );
  }
}
