import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Medical extends StatefulWidget {
  const Medical({ Key? key }) : super(key: key);

  @override
  _MedicalState createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  String k="Schedule : 8am - 5pm (except all FRI, SAT & Holidays)\nContacts : mdc@sust.edu\n\n-SUST and Mount Adora Hospital, Sylhet has signed an agreement of Discount on Medical Services for all SUSTians.\n-Total 102 enlisted Hospitals & Diagnostic Centers under Pragati Life Insurance Ltd serve the teachers and officers of SUST with any cooperation regarding life and health insurance";
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
                          
                          child: Text("SUST MEDICAL CENTER",
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

                      SizedBox(height: 20,),

                    Container(
                      //height: 150,
                      //width: 150,
                      child: Image.asset('assets/images/medi.jpg',fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 15,),

                      Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
          
                        child: Text(k,
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
      
      
      
      
      
      
      
      
      
      
              ],
      
      
      
            ),
          )
      
      
        ),
      ),
      
    );
  }
}