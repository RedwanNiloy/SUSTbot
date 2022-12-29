import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({ Key? key }) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {



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
        backgroundColor: Colors.black,
        body: Padding(
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
                          
                                        child: Text("Contact SUST",
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
                                text:"Registrar Office : registrar@sust.edu\nVC Office : vc@sust.edu\nProctor Office : proctor@sust.edu\nPhone : PABX : 880-821-713491, 714479, 713850, 717850, 716123, 715393\nFAX : 880-821-715257, 725050\nWebsite : www.sust.edu\nE-mail : system.admin@sust.edu",
                                
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








                 ]
    
    
            
          ),
        ),
        
    
    
      ),
    );
  }
}