  import 'dart:ui';
import 'package:bubble/bubble.dart';
import 'package:chatbot/achieve.dart';
import 'package:chatbot/chatbot.dart';
import 'package:chatbot/club.dart';
import 'package:chatbot/contact.dart';
import 'package:chatbot/dept.dart';
import 'package:chatbot/explore.dart';
import 'package:chatbot/food.dart';
import 'package:chatbot/hall.dart';
import 'package:chatbot/library.dart';
import 'package:chatbot/medical.dart';
import 'package:chatbot/speech.dart';
import 'package:chatbot/sports.dart';
import 'package:chatbot/sust.dart';
import 'package:chatbot/sust_map_screen.dart';
import 'package:chatbot/transport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shimmer/shimmer.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

//import 'package:speech_to_text/speech_to_text.dart' as stt;



class Chatbot extends StatefulWidget {
  const Chatbot({ Key? key }) : super(key: key);

  @override
  _ChatbotState createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {



stt.SpeechToText _speech=stt.SpeechToText();
bool _islistening=false;
String texts="Hello";

void initState(){
  super.initState();
  _speech=stt.SpeechToText();
}
//method for if bot is listening or not,if yes then it would collect data and send to dialogflow
void onListen()async
{
if(!_islistening)
{
bool available =await _speech.initialize(

onStatus: (val)=>print('Onstate: $val'),
onError: (val)=>print('Onstate: $val'),


);


if(available)
{
  setState(() {
    _islistening=true;
  });

  _speech.listen(
           onResult: (val)=>setState(() {
             texts=val.recognizedWords;
          
             })
         );
 
                    


}
else{
     
setState(() {
  _islistening=false;
  _speech.stop();
});
 

}


}




_islistening=false;
 


}













//method for collecting input data from user, passing it to dialogflow and then receive response from chatbot to make visisble

void response(query)async
 {

 
  AuthGoogle authGoogle = await AuthGoogle(fileJson: "assets/service3.json").build();
  
  Dialogflow dialogflow =Dialogflow(authGoogle: authGoogle,language: Language.english); 
  AIResponse  aiResponse = await dialogflow.detectIntent(query);
  setState(() {
    messages.insert(0, {"data":1,"message":aiResponse.getListMessage()[0]["text"]["text"][0].toString()});
  });

 }
 //method for launching any url file
 Future<void> onOpen(LinkableElement link)async{
   print(link);
   if(await canLaunch(link.url)){
     await launch(link.url);

   }
   else{
     throw ('Cant open link $link');
   }
 }

//making list for data user and bot responses.here their data is organised into a list of maps

List<Map<String,dynamic>>messages = <Map<String,dynamic>>[];
final messageInsert = TextEditingController(); 
String address=' ';// for current location

//this method is for geolacator to enable its service
Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the 
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }
//taking permission
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale 
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }
  
  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately. 
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}


//method ofr getting current loaction

Future<void>GetAd(Position position)async{


  List<Placemark> placemark =await placemarkFromCoordinates(position.latitude, position.longitude);
  Placemark place = placemark[0];
  address='${place.street},${place.subLocality},${place.locality},${place.postalCode},${place.country}';
  setState(() {
    
  });
}






  @override



  Widget build(BuildContext context) {
    return SafeArea(
       child: Scaffold(
         floatingActionButton: SpeedDial(         //for current location bar
           //childPadding: EdgeInsets.symmetric(vertical: 20.0),
           //childMargin:EdgeInsets.symmetric(horizontal: 30,vertical: 0) ,
           buttonSize: Size(35, 35),
           animatedIcon: AnimatedIcons.menu_close,
           backgroundColor: Colors.blue,
           activeBackgroundColor: Colors.black,
           childrenButtonSize: Size(65, 65),
           useRotationAnimation: true,
          curve: Curves.fastOutSlowIn,
           
           children: [
              
              /*SpeedDialChild(
                child: AvatarGlow(
                  
                  endRadius: 30,
                  glowColor: Colors.white,
                  child: Icon(Icons.map_rounded)),
                backgroundColor: Colors.blue,
                label:'SUST MAP',
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Mapscreen()),);
                },
                
         
              ),*/
         
              SpeedDialChild(
                child: AvatarGlow(
                  endRadius: 30,
                  glowColor: Colors.white,
                  
                  child: Icon(Icons.location_city_sharp)),
                backgroundColor: Colors.blue,
                label:'My Current Location',
                onTap: ()async{
                 
                 Position position = await _determinePosition();
                             //address= '${position.latitude}';
                              GetAd(position);
         
         
         
         
                }
         
              ),
         
         
           ],
           
           ),
       backgroundColor:Colors.black,
       appBar: AppBar(
         toolbarHeight:40,
         backgroundColor: Colors.black,
       ),
      

body:Column(children:<Widget> [
         
         
    
        
        // https://distok.top/stickers/754103543786504244/754108890559283200.gif

        Stack(
          children:[
         Shimmer.fromColors( baseColor: Colors.green, highlightColor: Colors.white,
          child:Text("SUSTbot",style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            //color: Colors.green,
            fontFamily: 'robopixies-new-font',
          ),
          ),
         
         ),

         Positioned(
                left:115,
                bottom: 8,
                child: Container(
                    height: 50,
                    width: 50,
                   child: Image.asset('assets/bot/bot6.gif'),
                  ),
              )






          ]
        ),
           //used for continues time building
         TimerBuilder.periodic(Duration(seconds:60),
         builder: (context){
           return Text(DateFormat.yMMMEd().add_jm().format(DateTime.now()),style: TextStyle(
             color:Colors.yellowAccent,
           ),
           );
         }
         ),

         Text('Your current location:',
         style: TextStyle(color: Colors.blueAccent),
           ),

         // ignore: unnecessary_string_interpolations
         Text('$address',
         style: TextStyle(color: Colors.yellowAccent),
           ),   
        

         
    
        VxArc(
          height: 2,
          edge:VxEdge.BOTTOM,
          arcType:VxArcType.CONVEX ,

          child: Divider(
            height: 2,
            color: Colors.greenAccent,
          ),
        ),
        VxArc(
          height: 10,
          edge:VxEdge.BOTTOM,
          arcType:VxArcType.CONVEX ,

          child: Divider(
            height: 10,
            color: Colors.greenAccent,
          ),
        ),
    
           //here index 1 is for bot
           //index 0 is for user
        
          Flexible(child: ListView.builder(
          reverse: true,
          itemCount: messages.length,
          //for bot
          itemBuilder: (context,index)=>messages[index]["data"]==1? Container(  //this container is for shwoing bot response
            child :Row(
              children:[
          
              Padding(
                padding : EdgeInsets.all(10),
                  child: Container(
                  height: 60,
                  width: 50,
                  child:CircleAvatar(
                    backgroundImage: AssetImage("assets/images/bot1.png"), 
                  ),
                          
                  ),
          
                ),
          
          
              Flexible(
                  child: Container(
                   
                   child:Bubble(
                  color:Colors.white,
                  radius: Radius.circular(15),
                
                  child: SelectableLinkify(
                  onOpen: onOpen,
                  text:messages[index]['message'].toString(),
                  style: TextStyle(color:Colors.black,
                  fontSize: 15.0,
                  ),
                  
                  toolbarOptions: ToolbarOptions(
                    copy: true,
                    selectAll: true,
          
                  ),
                  scrollPhysics: BouncingScrollPhysics(),
                  showCursor: true,
                  cursorWidth:3,
                  
                  
          
          
             ),
                   ),
                  ),
                ),
              ],
            ),
              
              )
          //for user 
            : Padding(
              padding: const EdgeInsets.only(right:2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:[
                 Flexible(
                   child: Container(//for showing user input
                       
                         child: Bubble(
                           color:Colors.blue,
                           radius: Radius.circular(15),
                           child: SelectableText(messages[index]["message"].toString(),textAlign: TextAlign.right,
                                   style: TextStyle(color: Colors.white,
                                   fontSize: 15.0,
                                   ),
                                   toolbarOptions: ToolbarOptions(
                                     copy: true,
                                     selectAll: true,
                                   ),
                                   scrollPhysics: BouncingScrollPhysics(),
                                   ),
                         ),
                       
                     ),
                 ),
                
                ]
              ),
            ),
            
              
          
            )
            ),
            
         
          const Divider(
         color:Colors.greenAccent),
         
          
            
             Padding(
               padding: EdgeInsetsDirectional.only(bottom: 2.0), 
               child: Row(
                 children: [
                AvatarGlow(
                  animate: true,
                  endRadius: 30,
                    glowColor:Colors.blue ,
                 child: IconButton(
                   
                    icon: Icon(Icons.mic), 

                    color: Colors.blueAccent,
                    iconSize: 25,
                    onPressed: (){
                        
                          
                        onListen();
                         _islistening=true;
                         print(texts);
                         setState(() {

                      messages.insert(0,{"data":0,"message":texts});
                      //debugPrint(messages.toString());
                   
                    });
                    response(texts);

                        
                         
                        


                   /* showMaterialModalBottomSheet(context: context, 
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20),
                    ),),
                   enableDrag: true,
                   isDismissible: true,
                   backgroundColor: Colors.white,

                  
                  // barrierColor: Colors.black,
                   bounce: true,
                    
                    builder: (context)=>Container(
                      height: 300,
                     // color: Colors.brown,
                      child: Padding(
                        padding: EdgeInsetsDirectional.all(20),
                        child: Column(
                          children: [
                      
                           
                            ListTile(
                             leading: AvatarGlow(endRadius:25 ,glowColor: Colors.blue, child: Icon(Icons.map_rounded,color:Colors.blue,)),
                             title: Text("SUST MAP",),
                             onTap: (){

                             },
                      
                      
                      
                            ),
                      ListTile(
                             leading: AvatarGlow(endRadius:25 ,glowColor: Colors.blue, child: Icon(Icons.stay_current_landscape,color:Colors.blue,)),
                             title: Text("My current Location",),
                             onTap: () async{
                             Position position = await _determinePosition();
                             //address= '${position.latitude}';
                              GetAd(position);
                             

                             

                             },
                      
                      
                      
                            ),
                      
                           
                      
                      
                      
                      
                          ],
                      
                      
                      
                        ),
                      ),
                     



                    ),
                    
                    
                    );*/

                    },
                     
                     ),
               ),
              

                    //container for input text field
                Container(
                  height: 30,
                  width:195 , 
                  
                 
                 decoration: const BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(10)),
                   color: Colors.white,
                 
                 ),
                      
                 child:Center(
                   child: Container(
                     width:300,
                     child: Padding(
                       padding: EdgeInsets.only(left:2),
                       child: TextFormField(

                                          
                         controller: messageInsert,
                         decoration: const InputDecoration.collapsed(
                           hintText: ' Enter your messages',
                           border: InputBorder.none,
                           
                                       
                           
                           
                           
                           
                         ),
                       ),
                     ),
                   ),
                 ),
                  
                  
                ),
                 AvatarGlow(
                  endRadius: 30,
                  glowColor: Colors.blueAccent,
                  child: IconButton(icon: const Icon(Icons.send),
                  iconSize: 20,
                  color:Colors.blue,
                  onPressed:()
                  {
                    if(messageInsert.text.isEmpty)
                    {
                      
                    }
                    else {
                      setState(() {

                      messages.insert(0,{"data":0,"message":messageInsert.text}); //if input message is not empty then it would insert that input into the lis
                      debugPrint(messages.toString());
                   
                    });
                    }
                      response(messageInsert.text);//calling method for chatbot response,its parameter is user's input
                      
                      messageInsert.clear();//it will clear text field input
                   
                  } ,
                  ),
                ),
                        
                 ],
                         ),
                 
             ),
          
       
       
       
       
       ],)
       
      ),
    );
   

  
  }
}