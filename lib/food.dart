import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Food extends StatefulWidget {
  const Food({ Key? key }) : super(key: key);

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body:SingleChildScrollView(
        child: Container(
          color: Colors.black,
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
              
                            child: Text("Cafeteria Central",
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
                        SizedBox(
                          height: 10.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Container(
                          child: Image.asset('assets/images/cafe.jpeg'),
                          
                          ),
                        ),
                         Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
              
                            child: Text("Food Menu\n-Will be Updated Soon",
                              style: GoogleFonts.lato(
                              textStyle:TextStyle(
                               fontSize:15,
                               fontWeight: FontWeight.normal,
                               color:Colors.yellow,
                               
                               
                               
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
              
                            child: Text("Cafeteria IICT",
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
                        SizedBox(
                          height: 10.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Container(
                          child: Image.asset('assets/images/cafe1.jpg'),
                          
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
              
                            child: Text("Food Menu\n-Will be Updated Soon",
                              style: GoogleFonts.lato(
                              textStyle:TextStyle(
                               fontSize:15,
                               fontWeight: FontWeight.normal,
                               color:Colors.yellow,
                               
                               
                               
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
              
                            child: Text("Food Court",
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
                        SizedBox(
                          height: 10.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Container(
                          child: Image.asset('assets/images/cafe2.jpg'),
                          
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
              
                            child: Text("Food Menu\n-Will be Updated Soon",
                              style: GoogleFonts.lato(
                              textStyle:TextStyle(
                               fontSize:15,
                               fontWeight: FontWeight.normal,
                               color:Colors.yellow,
                               
                               
                               
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
              
                            child: Text("Tongs",
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
                        SizedBox(
                          height: 10.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Container(
                          child: Image.asset('assets/images/tong.jpg'),
                          
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Container(
                          child: Image.asset('assets/images/tong1.jpeg'),
                          
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Container(
                          child: Image.asset('assets/images/cafe4.jpg'),
                          
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
              
                            child: Text("Food Menu\n-Due to Corona Pandemic Tongs are not available rightnow.",
                              style: GoogleFonts.lato(
                              textStyle:TextStyle(
                               fontSize:15,
                               fontWeight: FontWeight.normal,
                               color:Colors.yellow,
                               
                               
                               
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