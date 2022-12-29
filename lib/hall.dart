import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Hall extends StatefulWidget {
  const Hall({ Key? key }) : super(key: key);

  @override
  _HallState createState() => _HallState();
}

class _HallState extends State<Hall> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body:SingleChildScrollView(
        child: Container(
          color:Colors.black,
              child: Padding(
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
                                     SizedBox(height:20),
                               Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                    
                                  child: Text("Residence Halls",
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
                              Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                
                              child: Text("Currently, there are 5 halls of residence. A significant number of students reside privately near the university area of Sylhet metro.",
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
                    
                                  child: Text("Shah Paran Hall",
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
                                    SizedBox(height:10),
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Container(
                                child: Image.asset('assets/images/shahall.jpg'),
                                
                                ),
                              ),
          
                              SizedBox(height: 20,),
          
          
                             Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                    
                                  child: Text("Bangabandhu Sheikh Mujibur Rahman Hall",
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
                                    SizedBox(height:10),
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Container(
                                child: Image.asset('assets/images/bongohall.jpg'),
                                
                                ),
                              ), 
                              SizedBox(height: 20,),
          
                          //muj
                          SizedBox(height: 20,),
          
          
                             Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                    
                                  child: Text("Syed Mujtaba Ali Hall",
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
                                    SizedBox(height:10),
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Container(
                                child: Image.asset('assets/images/bongohall.jpg'),
                                
                                ),
                              ), 
                              SizedBox(height: 20,),
          
                           //jononi
          
                          SizedBox(height: 20,),
          
          
                             Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                    
                                  child: Text("Shahid Jononi Jahanara Imam Hall",
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
                                    SizedBox(height:10),
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Container(
                                child: Image.asset('assets/images/jahanarahall2.jpg'),
                                
                                ),
                              ), 
                              SizedBox(height: 20,),
          
          
                              //siraj
          
          
                              SizedBox(height: 20,),
          
          
                             Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                    
                                  child: Text("Begum Sirajunnesa Chowdhury Hall",
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
                                    SizedBox(height:10),
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Container(
                                child: Image.asset('assets/images/sirajhall.jpg'),
                                
                                ),
                              ), 
                              SizedBox(height: 20,),




                               Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                
                              child: Text("There are also well decorated houses for the faculty members of SUST. University authorities also run some private halls of residence outside the main campus especially for female students to guarantee housing for female students. These Halls are:\n\n-Darul Aman chatrabas\n-Amir Complex\n-Fazal Complex\n-Samad House\n-Maa Manjil\n-Sunu Mia Complex",
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
      ),
      ),
    );
  }
}