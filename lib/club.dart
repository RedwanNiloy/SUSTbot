import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Club extends StatefulWidget {
  const Club({ Key? key }) : super(key: key);

  @override
  _ClubState createState() => _ClubState();
}

class _ClubState extends State<Club> {

String k="RoboSUST is a robotics based organisation of Shahjalal University of Science and Technology (SUST) aimed to make an open platform for students of all department who wish to spend time with robot and robotics.";
String m=" A career and skill development, Job opportunity related organization of SUST\nEstablished in : 2012 \n\nMajor Activities: \n\n-Higher study info, Govt Job including BCS Jobs help, IELTS GRE help etc. Yearly Organizing Week Tent, Reception Program. \n\nContacts: info.sustcc@gmail.com ";
String l="A voluntary Blood donation and Mankin welfare Organization of SUST.\nEstablished in : 2008 \nObjectives : Donate blood, Manage blood donars, Serve people.\nMajor Functions & Activities :\n\n-Blood grouping program on Admission day \n\n-Arranging Charity show to help. \n-Serve helpless people. \n-Yearly Organizing Week Tent \n-Reception Program."; 
String o="SUSC is the only organization at SUST that works to help the students of SUST intending to improve their skills in career and English language.\nEstablished in : 2005\nObjectives : Come here speak better \n\nMajor Functions & Activities :\n\n-Yearly Organizing Week TentReception Program\n-Presentation\n-English speaking Seminar etc.";
String p="SUPA started their journey in June 6, 1996, as the first university based photogarphy club. Since then, it has grown up to be one of the most significant and popular cultural and co-curricular bodies in the roster of clubs and student-associations that SUST harbors.\n\nRegular Activities:\n\n-Photo Adda, Photo Walk, Basic Photography Course (BPC), Advance Photography Course (APC),  Intra-SUST Photography Exhibition - Hiraeth, International Photography Exhibition - Inquest Insight \nWebsite : https://www.supasust.org/ \nE-mail : sustsupa@gmail.com ";




  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body:SingleChildScrollView(
    child: Container(
      color: Colors.black,
      child: Padding(
        padding:const EdgeInsets.all(8.0),
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
                          
                          child: Text("RoboSUST",
                            style: GoogleFonts.lato(
                            textStyle:TextStyle(
                             fontSize:30,
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
                      height: 150,
                      width: 150,
                      child: Image.asset('assets/images/robosust.jpg',fit: BoxFit.cover,),
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

                   //carere
                     SizedBox(
                     height: 20.0, 
                    ),
                   Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          
                          child: Text("SUST Carear Club",
                            style: GoogleFonts.lato(
                            textStyle:TextStyle(
                             fontSize:30,
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
                      height: 150,
                      width: 150,
                      child: Image.asset('assets/images/c.jpg',fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 15,),

                      Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
          
                        child: Text(m,
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
        //sonchalon
           SizedBox(
                     height: 20.0, 
                    ),
                   Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          
                          child: Text("SONCHALON, SUST",
                            style: GoogleFonts.lato(
                            textStyle:TextStyle(
                             fontSize:30,
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
                      height: 150,
                      width: 150,
                      child: Image.asset('assets/images/son1.jpg',fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 15,),

                      Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
          
                        child: Text(l,
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
                  //sustspeakers

                  SizedBox(
                     height: 20.0, 
                    ),
                   Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          
                          child: Text("SUST Speakers Club",
                            style: GoogleFonts.lato(
                            textStyle:TextStyle(
                             fontSize:30,
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
                      height: 150,
                      width: 150,
                      child: Image.asset('assets/images/speak.jpg',fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 15,),

                      Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
          
                        child: Text(o,
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
            //supa
            SizedBox(
                     height: 20.0, 
                    ),
                   Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          
                          child: Text("SUST Photographer's Association",
                            style: GoogleFonts.lato(
                            textStyle:TextStyle(
                             fontSize:30,
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
                      height: 150,
                      width: 150,
                      child: Image.asset('assets/images/supa.jpg',fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 15,),

                      Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
          
                        child: Text(p,
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
      ),
    ),
  )



    );
  }
}