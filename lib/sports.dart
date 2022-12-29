import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sport extends StatelessWidget {
  const Sport({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color:Colors.black,
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children: [
      
                      Stack(
                                 clipBehavior: Clip.none,
                                 children:[
                                   ClipRRect(
                                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80),bottomRight: Radius.circular(80)),
                                   child: Container(
                                    color: Colors.grey[50],
                                     height: 180,
                                     
                                                      
                                   ),
                                                      ), 
                                Center(
                                  child: Container(
                                      height: 210,
                                      width: 200,
                                     child: Image.asset('assets/images/logo.png', fit: BoxFit.cover,),
                                     
                                    
                                    
                                    ),
                                ),
                                 ],
                               ),
                    SizedBox(
                         height: 20.0, 
                        ),

                         Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
          
                        child: Text("The students of this university participate in sports for recreation and the finest athletes regularly compete in inter-university games like football, handball, volleyball, basketball etc. SUST has some varsity teams. There is a Cricket ground, a Football ground, a Basketball ground and well equipped gymnasium adjacent to the university student health center. SUST is the only university to have Professional Cricket League and Professional Football League. Students organize both inter-department and inter-university tournaments for popular games every year. Girls and teachers also participate in several games.",
                          style: GoogleFonts.lato(
                          textStyle:TextStyle(
                           fontSize:15,
                           fontWeight: FontWeight.normal,
                           color:Colors.white,
                           
                           
                           
                          ),
                          ),
                          textAlign: TextAlign.left,
              
                          ),
                      ),
                    ),


                    SizedBox(height: 10,),




                     Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              
                              child: Text("Central Field",
                                style: GoogleFonts.lato(
                                textStyle:TextStyle(
                                 fontSize:20,
                                 fontWeight: FontWeight.bold,
                                 color:Colors.blue,
                                 
                                 
                                 
                                ),
                                ),
                                textAlign: TextAlign.left,
                                  
                                ),
                            ),
                          ), 
      
                          SizedBox(height: 10,),
      
                        Container(
                          //height: 150,
                          //width: 150,
                          child: Image.asset('assets/images/field.jpg',fit: BoxFit.cover,),
                        ),
                        SizedBox(height: 15,),
                        
      
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              
                              child: Text("BasketBall Ground",
                                style: GoogleFonts.lato(
                                textStyle:TextStyle(
                                 fontSize:20,
                                 fontWeight: FontWeight.bold,
                                 color:Colors.blue,
                                 
                                 
                                 
                                ),
                                ),
                                textAlign: TextAlign.left,
                                  
                                ),
                            ),
                          ), 
      
                          SizedBox(height: 10,),
      
                        Container(
                          //height: 150,
                          //width: 150,
                          child: Image.asset('assets/images/hand.jpg',fit: BoxFit.cover,),
                        ),
                          ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                      child: Image.asset('assets/images/hand1.jpg'),
                      
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                      child: Image.asset('assets/images/sport.jpg'),
                      
                      ),
                    ),




                    Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              
                              child: Text("HandBall Ground",
                                style: GoogleFonts.lato(
                                textStyle:TextStyle(
                                 fontSize:20,
                                 fontWeight: FontWeight.bold,
                                 color:Colors.blue,
                                 
                                 
                                 
                                ),
                                ),
                                textAlign: TextAlign.left,
                                  
                                ),
                            ),
                          ), 
      
                          SizedBox(height: 10,),
                          ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                      child: Image.asset('assets/images/field3.jpg'),
                      
                      ),
                    ),




      
      
      
      
                ],
             
      
      
            ),
          )
        ),
      )
      
    );
  }
}