import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dept extends StatefulWidget {
  const Dept({ Key? key }) : super(key: key);

  @override
  _DeptState createState() => _DeptState();
}

class _DeptState extends State<Dept> {

String k="-Department of Architecture (ARC)\n\n-Department of Chemical Engineering & Polymer Science (CEP)\n\n-Department of Civil & Environmental Engineering (CEE)\n\n-Department of Computer Science & Engineering (CSE)\n\n-Department of Electrical & Electronic Engineering (EEE)\n\n-Department of Food Engineering & Tea Technology (FET)\n\n-Department of Industrial & Production Engineering (IPE)\n\n-Department of Mechanical Engineering (MEE)\n\n-Department of Petroleum & Mining Engineering (PME) ";

String y="-Biochemistry & Molecular Biology(BMB)\n\n-Department of Genetic Engineering and Biotechnology";
String z="-Department of Chemistry (CHE)\n\n-Department of Geography and Environment (GEE)\n\n-Department of Mathematics (MAT)\n\n-Department of Physics (PHY)\n\n-Department of Statistics (STA)\n\n-Department of Oceanography (OCG) ";
String p="-Department of Anthropology (ANP)\n\n-Department of Bangla (BNG)\n\n-Department of Economics (ECO)\n\n-Department of English (ENG)\n\n-Department of Political Studies (PSS)\n\n-Department of Public Administration (PAD)\n\n-Department of Social work (SCW)\n\n-Department of Sociology (SOC)";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: GestureDetector(
          child:Icon(Icons.arrow_back_ios_new,color:Colors.white),
          onTap: (){

            Navigator.pop(context);
          },

          ),


        ),
            
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
                          
                          child: Text("School of Applied Science & Technology",
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

                   SizedBox(height:20),


                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          
                          child: Text("School of Life Sciences",
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
          
                        child: Text(y,
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
                          
                          child: Text("School of Physical Sciences",
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
          
                        child: Text(z,
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
                          
                          child: Text("School of Agriculture & Mineral Sciences",
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
          
                        child: Text("-Forestry & Environtmental Science(FES)",
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
                          
                          child: Text("School of Management & Bussiness Administration",
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
          
                        child: Text("-Business Administration",
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
                          
                          child: Text("School of Social Sciences",
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
                )
              
              
              
              
              ,),
            )




      ),



      
    );
  }
}