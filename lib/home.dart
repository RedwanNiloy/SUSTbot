import 'package:avatar_glow/avatar_glow.dart';
import 'package:chatbot/achieve.dart';
import 'package:chatbot/chatbot.dart';
import 'package:chatbot/club.dart';
import 'package:chatbot/contact.dart';
import 'package:chatbot/dept.dart';
import 'package:chatbot/food.dart';
import 'package:chatbot/hall.dart';
import 'package:chatbot/library.dart';
import 'package:chatbot/login.dart';
import 'package:chatbot/medical.dart';
import 'package:chatbot/sports.dart';
import 'package:chatbot/sust.dart';
import 'package:chatbot/sust_map_screen.dart';
import 'package:chatbot/transport.dart';
import 'package:chatbot/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fialogs/fialogs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'explore.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String code=' ';



  @override
  

void ontap(){
  if(code=="cse2018"){
  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Chatbot() ));
  print("acse");
  }
}


void error()
{
  errorDialog(
	context,
	"Confirmation Box","Wrong Code,Sorry!",
	positiveButtonText: "OK",
	positiveButtonAction: () {},
	negativeButtonText: "OK",
	negativeButtonAction: () {},
	neutralButtonText: "OK",
	neutralButtonAction: () {},
	hideNeutralButton: false,
	closeOnBackPress: false,
);
}


User? user =FirebaseAuth.instance.currentUser;
UserModel loggedinUser =UserModel();


Future<void>logout(BuildContext context)async
{
  await FirebaseAuth.instance.signOut();
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>LogIn() ));


}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
    .collection("users")
    .doc(user!.uid)
    .get()
    .then((value)
    {
      this.loggedinUser=UserModel.fromMap(value.data());
      setState(() {
        
      });
    }
    
    
    
     );
  
  
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
         toolbarHeight:40,
         backgroundColor: Colors.black,
       ),

       drawer: Drawer(
        
        child: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            
                
           child: Column(
             children:<Widget> [


               
                 VxArc(
                   height: 10,
                   edge: VxEdge.BOTTOM,
                   arcType: VxArcType.CONVEX,
                   child: Container(
                    

                     child:Column(
                    
                    children: [
                      
               Text("You are logged in as",
               style:TextStyle(color: Colors.white,
               
               fontSize: 10,
               )
               
               
               
               ),



               Text("${loggedinUser.firstname} ${loggedinUser.secondname}",
               style:TextStyle(color: Colors.blue,
                fontWeight: FontWeight.bold,
                  fontFamily: 'Athiti-Regular',
               
               fontSize:20,
               )
               
               
               
               ),

               Text("${loggedinUser.email}",
               style:TextStyle(color: Colors.blue,
                fontWeight: FontWeight.bold,
                  fontFamily: 'Athiti-Regular',
               
               fontSize: 15,
               )
               
               
               
               ),

                Container(
                 height: 150,
                 width:150,
                child: Image.asset("assets/bot/bot10.gif"),


                ),






                    ],







                     ),
                   height: 250,
                   color:Colors.black,
                         
                         
                   ),
                 ),
               
               
                Container( 
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                       leading: AvatarGlow(
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        child: Icon(Icons.school_outlined,color: Colors.yellow,)),
                      title: Text("About SUST",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Sust()),);
                    },
                
                    ),
                     
                  ),
                ),
              
                
          //02
          Container(
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                      leading: AvatarGlow(
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        child: Icon(Icons.explore,color: Colors.yellow,)),
                      title: Text("Visit SUST Gallery",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => explore()),);
                    },
                
                    ),
                     
                  ),
                ),
                 
           //03
           Container(
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                      leading: AvatarGlow(
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        child: Icon(Icons.school,color: Colors.yellow,)
                        ),
                      title: Text("Schools & Departments",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                      //print("pressed");
                       Navigator.push(context,MaterialPageRoute(builder: (context) => Dept()),);
                    },
                
                    ),
                     
                  ),
                ),
               Container(
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                      leading: AvatarGlow(
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        child: Icon(Icons.book,color: Colors.yellow,)
                        ),
                      title: Text("Library",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                      //print("pressed");
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Lib()),);
                    },
                
                    ),
                     
                  ),
                ),





             Container(
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                      leading: AvatarGlow(
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        child: Icon(Icons.work,color: Colors.yellow,)
                        ),
                      title: Text("Clubs & Organizations",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                      //print("pressed");
                 Navigator.push(context,MaterialPageRoute(builder: (context) => Club()),);
                    },
                
                    ),
                     
                  ),
                ),





           Container(
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                      leading: AvatarGlow(
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        child: Icon(Icons.food_bank,color: Colors.yellow,)
                        ),
                      title: Text("Canteen & Tong",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                     // print("pressed");
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Food()),);

                    },
                
                    ),
                     
                  ),
                ),
              //04
              
              Container(
                
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                      leading: AvatarGlow(
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        
                        child: Icon(Icons.emoji_transportation,color: Colors.yellow,)),
                      title: Text("Transport",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                      //print("pressed");
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Transport()),);

                    },
                
                    ),
                     
                  ),
                ),
                //05
                
                Container(
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                      leading: AvatarGlow(
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        
                        child: Icon(Icons.medical_services,color: Colors.yellow,)),
                      title: Text("Medical Service",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                      //print("pressed");
                       Navigator.push(context,MaterialPageRoute(builder: (context) => Medical()),);
                    },
                
                    ),
                     
                  ),
                ),
                
                //06
                 
              Container(
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                      leading: AvatarGlow(
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        
                        child: Icon(Icons.sports,color: Colors.yellow,)),
                      title: Text("Sports Ground",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Sport()),);
                      //print("pressed");
                    },
                
                    ),
                     
                  ),
                ),
              //07
               
              Container(
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                      leading: AvatarGlow(
                        
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        child: Icon(Icons.house,color: Colors.yellow,)),
                      title: Text("Residence Halls",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                     // print("pressed");
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Hall()),);
                    },
                
                    ),
                     
                  ),
                ),
                
                Container(
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                      leading: AvatarGlow(
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        
                        child: Icon(Icons.label_important,color: Colors.yellow,)),
                      title: Text("Achievements",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                      //print("pressed");

                       Navigator.push(context,MaterialPageRoute(builder: (context) => Ach()),);
                    },
                
                    ),
                     
                  ),
                ),  



Container(
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                      leading: AvatarGlow(
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        child: Icon(Icons.work,color: Colors.yellow,)
                        ),
                      title: Text("Contact SUST",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                      //print("pressed");
                 Navigator.push(context,MaterialPageRoute(builder: (context) => Contact()),);
                    },
                
                    ),
                     
                  ),
                ),
                Container(
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                      leading: AvatarGlow(
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        child: Icon(Icons.developer_mode,color:Colors.yellow,)
                        ),
                      title: Text("Credits",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                      //print("pressed");
                 Navigator.push(context,MaterialPageRoute(builder: (context) => Contact()),);
                    },
                
                    ),
                     
                  ),
                ),


                Container(
                  child:Card(
                    color: Colors.black,
                    shadowColor: Colors.white,
                    child:ListTile(
                      leading: AvatarGlow(
                        endRadius: 30,
                        glowColor: Colors.yellow,
                        child: Icon(Icons.logout_rounded,color: Colors.yellow,)
                        ),
                      title: Text("Log Out",style: TextStyle(
                       color: Colors.white
                      ),
                      ),
                    onTap: (){
                      //print("pressed");
                // Navigator.push(context,MaterialPageRoute(builder: (context) => Contact()),);
                logout(context);
                    },
                
                    ),
                     
                  ),
                ),



                
                
                
             ],
                 
                
                
            ),
                
                
                
          ),
        ),
         
              

         ),


        body: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
              
                children: [
               /* Container(
                  height: 150,
                  width: 150,
                 child: Image.asset('assets/bot/bot6.gif'),
                )*/

                 Shimmer.fromColors(
                   baseColor: Colors.white,
                   highlightColor: Colors.yellow,
                   child: Text("Hey! ${loggedinUser.firstname}",
                                 style:TextStyle(
                                 fontSize: 50,
                                 fontWeight: FontWeight.bold,
                                 fontFamily: 'Athiti-Regular',
                                
                                 ) ,
                                 
                                 
                                 ),
                 ),




                Text('WELCOME',
                style:TextStyle(color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Athiti-Regular',
                ),
                
                
                ),
                
                Text('To',
                style:TextStyle(color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                //fontFamily: 'Athiti-Regular',
                ) ,
                
                
                ),
          
          
                Stack(
                children:[
                Text("SUSTbot",
              
              style: TextStyle(
               fontSize: 70.0,
               fontWeight: FontWeight.bold,
               fontFamily: 'robopixies-new-font',
               color: Colors.green,
                
              ),
              
              ),
              Positioned(
                left:159,
                bottom: 8,
                child: Container(
                    height: 70,
                    width: 70,
                   child: Image.asset('assets/bot/bot6.gif'),
                  ),
              )
          
          
                ]
                ),
                Text('JUST KNOCK & GET',
                style:TextStyle(color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Athiti-Regular',
                ) ,
                
                
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
                    SizedBox(height:50 ,),
                    Text('What is SUSTbot?',
                  style:TextStyle(color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Athiti-Regular',
                  ) ,
                  
                  
                  ),

              Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              
              Container(
                  height: 100,
                  width: 100,
                 child: Image.asset('assets/bot/bot2.gif'),
                ),
                 
                Flexible(
                  child: Text('SUSTbot offers a chatbot feature for getting info about classroom & others updates. Whenever you need anything related, you can just knock SUSTbot. So, no need to go to social media for class updates & no more waste of time in searching classroom files/drives. Just SUSTbot it',
                  style:TextStyle(color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  //fontFamily: 'Baloo_2',
                  fontFamily: 'Athiti-Regular',
                  ) ,
                  
                  
                  ),
                ),
              
              
              
              ],
              
              
              ),
             const Divider(height:5 ,
              color:Colors.greenAccent,
              
              ),
             

                SizedBox(height: 20,), 

              Text("What's The Features & Updates?",
                  style:TextStyle(color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Athiti-Regular',
                  ) ,
                  
                  
                  ),
                SizedBox(height: 10,),

                  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  
                  
                     
                    Flexible(
                      child: Text('Dear ${loggedinUser.firstname},\nThis is SUSTbot 1.0 offering you various features. I am a user friendly chatbot to help you as well as learn from you',
                      style:TextStyle(color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Athiti-Regular',
                      ) ,
                      
                      
                      ),
                    ),
                   /* Container(
                      height: 100,
                      width: 100,
                     child: Image.asset('assets/bot/bot8.gif'),
                    ),*/
                  
                  
                  
                  ],
                  
                  
                  ),
                  SizedBox(height: 20,),
       //sust know
            Shimmer.fromColors(
              baseColor: Colors.blue,
              highlightColor: Colors.white,
              child: Text("Explore SUST",
                    style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Athiti-Regular',
                    ) ,
                    
                    
                    ),
            ),


           SizedBox(height: 5,),



       Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  
                  
                     
                    Flexible(
                      child: Text('Go to the menu bar on the top left of the homepage & get various infos about SUST (eg. info about depts, library, cafe, sports ground, club, organizations, residence halls etc here. You can visit SUST gallery too!',
                      style:TextStyle(color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Athiti-Regular',
                      ) ,
                      
                      
                      ),
                    ),
                   Container(
                      height: 100,
                      width: 100,
                     child: Image.asset('assets/bot/bot8.gif'),
                    ),
                  
                  
                  
                  ],
                  
                  
                  ),

             //speech to text



              Shimmer.fromColors(
              baseColor: Colors.blue,
              highlightColor: Colors.white,
              child: Text("Speech to Text",
                    style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Athiti-Regular',
                    ) ,
                    
                    
                    ),
            ),


           SizedBox(height: 5,),



       Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                  Container(
                      height: 100,
                      width: 100,
                     child: Image.asset('assets/bot/bot9.gif'),
                    ),
                     
                    Flexible(
                      child: Text("Are you tired of chatting and wrtting messages with me? Don't worry ${loggedinUser.firstname} You can ask me through speech/audio if you wish.Talk to me & have fun!",
                      style:TextStyle(color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Athiti-Regular',
                      ) ,
                      
                      
                      ),
                    ),
                   
                  
                  
                  
                  ],
                  
                  
                  ),


//map
Shimmer.fromColors(
              baseColor: Colors.blue,
              highlightColor: Colors.white,
              child: Text("Campus Map",
                    style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Athiti-Regular',
                    ) ,
                    
                    
                    ),
            ),


           SizedBox(height: 5,),



       Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  
                 
                     
                    Flexible(
                      child: Text("Customized map of SUST campus is available! You can explore all the places of the campus. No chance of missing any places! let's explore",
                      style:TextStyle(color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Athiti-Regular',
                      ) ,
                      
                      
                      ),
                    ),
                   
                   Container(
                      height: 100,
                      width: 100,
                     child: Image.asset('assets/bot/bot10.gif'),
                    ),
                  
                  
                  ],
                  
                  
                  ),


      //location
       Shimmer.fromColors(
              baseColor: Colors.blue,
              highlightColor: Colors.white,
              child: Text("Your Current Location",
                    style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Athiti-Regular',
                    ) ,
                    
                    
                    ),
            ),


           SizedBox(height: 5,),



       Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                         Container(
                      height: 100,
                      width: 100,
                     child: Image.asset('assets/bot/bot11.gif'),
                    ),
                     
                    Flexible(
                      child: Text("You can read your current location just by clicking on the button beside the send button on chatbot window",
                      style:TextStyle(color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Athiti-Regular',
                      ) ,
                      
                      
                      ),
                    ),
                   
                  
                  
                  
                  ],
                  
                  
                  ),

//SizedBox(height: 5,),




//sugg
Shimmer.fromColors(
              baseColor: Colors.blue,
              highlightColor: Colors.white,
              child: Text("Suggestions & Teaching SUSTbot",
                    style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Athiti-Regular',
                    ) ,
                    
                    
                    ),
            ),


           SizedBox(height: 5,),



       Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                         Container(
                      height: 100,
                      width: 100,
                     child: Image.asset('assets/bot/bot11.gif'),
                    ),
                     
                    Flexible(
                      child: Text("Do you Want to train me? Wanna be a SUSTbot trainer? Yes my friend, you can give suggestions & teach me as well. You have to text me in this format- '#sugg:Your text'. I want to learn more and more. Let's go to a training session then & have fun!",
                      style:TextStyle(color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Athiti-Regular',
                      ) ,
                      
                      
                      ),
                    ),
                   
                  
                  
                  
                  ],
                  
                  
                  ),

SizedBox(height: 20,),

        //Objectives
        Text("Main Objectives",
                  style:TextStyle(color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Athiti-Regular',
                  ) ,
                  
                  
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                  
                     
                    Flexible(
                      child: Text("# Ask Any thing related to your classroom, I have all info (Ex: class routine, drive/files, result link etc)\n#You can also ask me about SUST(Ex: SUST dept,Transport,admission etc).I am ready to answer my friend!",
                      style:TextStyle(color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Athiti-Regular',
                      ) ,
                      
                      
                      ),
                    ),
                  ]
                  ),







          
          
                ],
              



              ),
            ),
          ),
        ),
        backgroundColor: Colors.black,
        
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.black,
          animationCurve: Curves.fastLinearToSlowEaseIn,
          height: 50,
          items: [
              Icon(Icons.home,size: 20,color: Colors.black,),
              Icon(Icons.message,size: 20,color:Colors.black),
              Icon(Icons.explore,size: 20,color:Colors.black,),
              
              
        


          ],
          index: 0,
          onTap: (index){
            if(index==1){

            singleInputDialog(context,"Department Code Confirmation", DialogTextField(
    label: "Your Department Code",  
		obscureText: true,  
		textInputType: TextInputType.text,   
		validator: (value) {  
			if (value!.isEmpty) return "Required!";  
     
			return null;  
		},  
    helperText: "Ask your CR"
		
    

            ),

positiveButtonText: "Submit",  
	positiveButtonAction: (value) {  
	if(value=="cse2018")
    {
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Chatbot() ));
       
       code=value;
      ontap();
      //Navigator.pop(context);

    }
    else{
      error();
    }
    // Navigator.pop(context);
   print("pore");
  // ontap(value);
	}, 
  
	
	
	closeOnBackPress: true, 

            );
            




            // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Chatbot() ));
            }
            if(index==2)
          {
           // logout(context);
             Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Mapscreen() ));

          }

          }
          


      

          
        ),
        
      ),
    );
  }
}