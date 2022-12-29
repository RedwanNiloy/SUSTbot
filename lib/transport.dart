import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Transport extends StatefulWidget {
  const Transport({ Key? key }) : super(key: key);

  @override
  _TransportState createState() => _TransportState();
}

class _TransportState extends State<Transport> {
  String k="It is an internal transport system for SUSTIANS. Its main starting point is from SUSTGATE to wherever you want to go.But its not free.You have to pay only 5Taka for going to any place in SUST ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      
      
      
      
      
      
      
                         //bus
                      SizedBox(
                         height: 20.0, 
                        ),
                       Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              
                              child: Text("SUST BUS",
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
                         // height: 150,
                          //width: 150,
                          child: Image.asset('assets/images/bus.jpg',fit: BoxFit.cover,),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          //height: 150,
                          //width: 150,
                          child: Image.asset('assets/images/Zatri.jpg',fit: BoxFit.cover,),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          //height: 150,
                          //width: 150,
                          child: Image.asset('assets/images/bus2.jpg',fit: BoxFit.cover,),
                        ),
                        SizedBox(height:20),
                               
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              
                              child: Text("BUS SCHEDULE",
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
                          SizedBox(height: 5,),
                          Container(
                         // height: 150,
                         // width: 150,
                          child: Image.asset('assets/images/bs1.png',fit: BoxFit.cover,),
                        ),
                         Container(
                         // height: 150,
                         // width: 150,
                          child: Image.asset('assets/images/bs2.png',fit: BoxFit.cover,),
                        ),
                         Container(
                         // height: 150,
                         // width: 150,
                          child: Image.asset('assets/images/bs3.png',fit: BoxFit.cover,),
                        ),
                         Container(
                         // height: 150,
                         // width: 150,
                          child: Image.asset('assets/images/bs4.png',fit: BoxFit.cover,),
                        ),
                         Container(
                         // height: 150,
                         // width: 150,
                          child: Image.asset('assets/images/bs5.png',fit: BoxFit.cover,),
                        ),
                       SizedBox(height: 20,),
                      
      
                      Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              
                              child: Text("SUST AUTO SERVICE",
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
      
                               //SizedBox(height: 7,),
                               SizedBox(height: 5,),
                          Container(
                         // height: 150,
                         // width: 150,
                          child: Image.asset('assets/images/auto1.jpg',fit: BoxFit.cover,),
                        ),
      
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
      
      
      
      
      
      
      
      
                 ],
      
              ),
            ),
      
      
        ),
      ),

      
    );
  }
}