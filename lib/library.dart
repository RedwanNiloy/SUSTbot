import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Lib extends StatefulWidget {
  const Lib({ Key? key }) : super(key: key);

  @override
  _LibState createState() => _LibState();
}

class _LibState extends State<Lib> {

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
        body:SingleChildScrollView(
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
        
        
                       SizedBox(height: 20,),
                       Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                          
                                        child: Text("Library",
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
                                       
                                       ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Container(
                                child: Image.asset('assets/images/lib.jpg'),
                                
                                ),
                              ),
                                   SizedBox(height: 10,),
                             ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Container(
                                child: Image.asset('assets/images/lib1.jpg'),
                                
                                ),
                              ), 





                                    SizedBox(height: 10,),
                                    Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                
                              child: SelectableLinkify(
                                text:"SUST has an extensive core curriculum required of all undergraduates. SUST is the first university in Bangladesh to adopt American course credit systems for all departments. The syllabus is always updated frequently to maintain the global standard of education. SUST has a common Central Library with a collection of 180,000 volumes and 300 current periodical subscriptions for all academic departments. The library includes electronic copies of books, which can be accessed from any academic department through electronic local area networking (LAN). Per year around 2000 volumes are added in this library. The library building of SUST is famous for its attractive triangular shape. It has also a free internet browsing facility and rental library program. Additionally, there are also departmental library in each academic department and hall library in each residential hall. Library has an Online Public Access Catalog (OPAC) and its URL is http://library.sust.edu",
                                
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
                          Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                          
                                        child: Text("Library Hours",
                                          style: GoogleFonts.lato(
                                          textStyle:TextStyle(
                                           fontSize:15,
                                           fontWeight: FontWeight.bold,
                                           color:Colors.yellow,
                                           
                                           
                                           
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
                                text:"The library provides 12-hour non-stop services from 8:00 a.m. to 8:00 p.m. on all working days.",
                                
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
                          Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                          
                                        child: Text("Library Resources (Hard Copy):",
                                          style: GoogleFonts.lato(
                                          textStyle:TextStyle(
                                           fontSize:15,
                                           fontWeight: FontWeight.bold,
                                           color:Colors.yellow,
                                           
                                           
                                           
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
                                text:"Starting with a very meager collection, the library has now been enriched with more than 75 thousand books, 6 thousand hard copy journals/ periodicals and 23 Dailies for its users.",
                                
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
                          Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                          
                                        child: Text("Muktijuddho Corner:",
                                          style: GoogleFonts.lato(
                                          textStyle:TextStyle(
                                           fontSize:15,
                                           fontWeight: FontWeight.bold,
                                           color:Colors.yellow,
                                           
                                           
                                           
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
                                text:"The Central Library has established a unique Muktijuddho Corner which is enriched with the Books, Posters, Maps, Videos, Documents, etc. on the Great Liberation War of Bangladesh held in 1971. The present collection of books in the Muktijuddho Corner is more than 2,000 titles",
                                
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

                      Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                          
                                        child: Text("IICT Library",
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
                                text:"The library provides 12-hour non-stop services from 8:00 a.m. to 8:00 p.m. on all working days.",
                                
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
           ),
        
          ),
        )
        
      ),
    );
  }
}