import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Ach extends StatefulWidget {
  const Ach({ Key? key }) : super(key: key);

  @override
  _AchState createState() => _AchState();
}

class _AchState extends State<Ach> {

Future<void> onOpen(LinkableElement link)async{
   print(link);
   if(await canLaunch(link.url)){
     await launch(link.url);

   }
   else{
     throw ('Cant open link $link');
   }
 }




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
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
        
        
                       SizedBox(height: 20,),
                       Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                          
                                        child: Text("Research Ranking",
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
                
                              child: SelectableLinkify(
                                text:"In 2016, SUST ranked as the top research university in Bangladesh (610th in the world) by Scopus-SCImago institution ranking. In 2019, it ranked 337th in Asia and 610th in the world among 3,471 higher educational institutions. SUST ranked at 445th for research and 493rd for innovation in the world. It ranked 1st in 2015 and 3rd in 2021 among all universities in Bangladesh by Webometrics.",
                                
                                onOpen: onOpen,
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

                          SizedBox(height: 20,),
          //nasa
          Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                          
                                        child: Text("Nasa Space App Challenge",
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
                
                              child: SelectableLinkify(
                                text:"In 2018, the team from SUST became the world champion of NASA Space Apps Challenge among 1,395 local winning teams from around the world.In the International Theoretical Physics Olympiad 2019, seven teams from SUST got place among finalist 88 and achieved 15th spot in the world (highest individual achievement of an Asian University).Due to pioneering contributions in science and technology, the university is often referred as Stanford of the east. News: https://www.thedailystar.net/bytes/nasa-space-apps-challenge-2018-sust-student-team-olik-winner-1703701",
                                
                                onOpen: onOpen,
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
                          SizedBox(height: 20,),

                          //pipi
                          Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                          
                                        child: Text("Pipilika",
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
                
                              child: SelectableLinkify(
                                text:"Pipilika (Bengali: পিপীলিকা) was a search engine operated from Sylhet, Bangladesh.[1] The search engine is no longer operating.It is the country's first Bangla search engine developed by the Computer Science and Engineering students of Shahjalal University of Science and Technology, Sylhet, Bangladesh as a thesis project.It has ability to search both in Bengali and English language. Pipilika is the country's first and only search engine that can search both Bangla and English. It searches and automatically characterizes Bangla and English newspapers of the country, blog sites, Bangla Wikipedia and government websites. It prioritizes Bangla information over English.Wiki:https://en.wikipedia.org/wiki/Pipilika",
                                
                                onOpen: onOpen,
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



                                SizedBox(height: 20,),
                                    
                          //ribo
                          Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                          
                                        child: Text("Ribo",
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
                
                              child: SelectableLinkify(
                                text:"Ribo is the first social humanoid robot which can speak in Bengali. Ribo was created by RoboSUST, a robotics group of Shahjalal University of Science & Technology, Bangladesh.The team was supervised by Muhammed Zafar Iqbal. Bangladesh Science Fiction Society funded for making this humanoid robot Ribo. Ribo was first appeared in public on 11 December 2015 in a Science Fiction Festival held at the Public Library, Shahbag.Wiki:https://en.wikipedia.org/wiki/Ribo_(robot)",
                                
                                onOpen: onOpen,
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
                          SizedBox(height: 20,),
                          //icpc
                          Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                          
                                        child: Text("ACM ICPC Programming Contest",
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
                                child: Image.asset('assets/images/acm.jpg'),
                                
                                ),
                              ), 
                               ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Container(
                                child: Image.asset('assets/images/acm1.jpg'),
                                
                                ),
                              ),




                                    SizedBox(height: 10,),
                                    Align(
                            alignment: Alignment.centerLeft,

                            child: Container(
                
                              child: SelectableLinkify(
                                text:"-The “Descifrador team” representing Shahjalal University of Science and Technology (Sust) was declared the champion of Asia Regional (Dhaka site) ACM- ICPC 2018, a prestigious programming contest around the world.News:https://www.thedailystar.net/city/news/sust-wins-acm-icpc-regional-contest-1659187",
                                
                                onOpen: onOpen,
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
                          ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Container(
                                child: Image.asset('assets/images/acm2.jpg'),
                                
                                ),
                              ),
                          SizedBox(height: 5,),
                          Text('Image: SUST Team in ICPC World Final 2018',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.yellow,

                    ),
                    
                    ),

                                SizedBox(height: 20,),

                          //award
                          Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                          
                                        child: Text("National ICT Award",
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
                
                              child: SelectableLinkify(
                                text:"Vice Chancellor of Shahjalal University of Science and Technology in Sylhet, Professor Farid Uddin Ahmed received award for the university's contribution in education sector at a ceremony marking the National ICT Day on 12th of December, 2017.",
                                
                                onOpen: onOpen,
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
        )
        
      ),
    );
  }
}