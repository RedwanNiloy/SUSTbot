


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class explore extends StatefulWidget {
  const explore({ Key? key }) : super(key: key);

  @override
  _exploreState createState() => _exploreState();
}

class _exploreState extends State<explore> {



String a="SUST has an urban campus area of 320 acres. Many visitors come to Sylhet to visit the 'Shahid Minar' (Martyr's Memorial) of the university. The memorial stands on the top of a small hill and is surrounded by trees. Different cultural organizations arrange programs on the premises on local and national occasions. The Kilo Road is an entrance to the SUST campus known for green vista. The first-ever Bangladesh Mathematical Olympiad was held in Shahjalal University of Science and Technology in 2004.";
List<String>url=['assets/images/1kilo.jpg','assets/images/1kilo2.jpg','assets/images/1kilo3.jpg'];
List<String>url2=['assets/images/iict.jpg','assets/images/iict (2).jpg','assets/images/iict3.jpg'];

Widget BuildImage(String urlimage,int index)=>ClipRRect(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  child:   Container(
  
    margin: EdgeInsets.symmetric(horizontal: 5),
  
    width: 1000,
  
    color: Colors.grey,
  
    child: Image.asset(urlimage,
  
    fit: BoxFit.cover,
  
    ),
  
  
  
  ),
);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
                        
               
        backgroundColor: Colors.black,
            body: SingleChildScrollView(
             child: Padding(
               padding: EdgeInsets.all(0.0),
               child: Column(
                
                 children:[
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
        


                   SizedBox(height: 15,),
                   Text(a,style: TextStyle(
                           fontFamily: 'Athiti-Regular',
                           color: Colors.white,

                         ),
                      
                   ),
                 
                   SizedBox(
                     height: 10,
                   ),

                 Text(
                         '1KILO',style: TextStyle(
                           fontFamily: 'Athiti-Regular',
                           fontWeight: FontWeight.bold,
                           color: Colors.blue,
                           fontSize: 25,

                         ),
                      

                   ),
                 ClipRRect(
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                   child: Container(
                       
                         child: Image.asset('assets/images/1kilo.jpg'),
                 
                        ),
                 ),
                 SizedBox(
                   height: 10,

                 ),
                   Center(
                      child: CarouselSlider.builder(
                        
                        options: CarouselOptions(height:150,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        

                        
                        
                        ),
                        itemCount:url.length ,
                        itemBuilder:  (BuildContext context, int index, int realIndex){
                         final  urlimage=url[index];
                         return BuildImage(urlimage,index);

                        },  
                        ),

                   ),

                  SizedBox(
                     height: 10,
                   ),

                 Text(
                         'IICT',style: TextStyle(
                           fontFamily: 'Athiti-Regular',
                           fontWeight: FontWeight.bold,
                           color: Colors.blue,
                           fontSize: 25,

                         ),
                      

                   ),
                
                  SizedBox(
                     height: 10,
                   ), 

                   CarouselSlider(
                     items: url2.map((number) => Container(
                       width: 1000,
                      child:Image.asset(number,
                      fit:BoxFit.cover),
                     ),
                     
                     ).toList(),
                   options: CarouselOptions(
                      height: 150,
                       enableInfiniteScroll: true,
                       enlargeCenterPage: true,
                       autoPlay: true,
                       //aspectRatio: 16/9,
                       autoPlayCurve: Curves.fastOutSlowIn,

                   ),
                   
                   
                   ),

SizedBox(
                     height: 10,
                   ),

                 Text(
                         'Library',style: TextStyle(
                           fontFamily: 'Athiti-Regular',
                           fontWeight: FontWeight.bold,
                           color: Colors.blue,
                           fontSize: 25,

                         ),
                      

                   ),
                
                  SizedBox(
                     height: 10,
                   ), 
               Image.asset('assets/images/lib1.jpg'),
                SizedBox(
                     height: 10,
                   ), 
                Text(
                         'D Building',style: TextStyle(
                           fontFamily: 'Athiti-Regular',
                           fontWeight: FontWeight.bold,
                           color: Colors.blue,
                           fontSize: 25,

                         ),
                      

                   ),
                
                  SizedBox(
                     height: 10,
                   ), 
                 Image.asset('assets/images/d.jpg'),

                 SizedBox(
                     height: 10,
                   ), 
                Text(
                         'E Building',style: TextStyle(
                           fontFamily: 'Athiti-Regular',
                           fontWeight: FontWeight.bold,
                           color: Colors.blue,
                           fontSize: 25,

                         ),
                      

                   ),
                
                  SizedBox(
                     height: 10,
                   ), 
                 Image.asset('assets/images/e.jpg'),
                 SizedBox(
                     height: 10,
                   ), 
                Text(
                         'University Center',style: TextStyle(
                           fontFamily: 'Athiti-Regular',
                           fontWeight: FontWeight.bold,
                           color: Colors.blue,
                           fontSize: 25,

                         ),
                      

                   ),
                
                  SizedBox(
                     height: 10,
                   ), 
                 Image.asset('assets/images/uc.jpg'),

         SizedBox(
                     height: 10,
                   ), 
                Text(
                         'Auditorium',style: TextStyle(
                           fontFamily: 'Athiti-Regular',
                           fontWeight: FontWeight.bold,
                           color: Colors.blue,
                           fontSize: 25,

                         ),
                      

                   ),
                
                  SizedBox(
                     height: 10,
                   ), 
                 Image.asset('assets/images/audi.jpg'),
              SizedBox(
                     height: 10,
                   ), 
                Text(
                         'BasketBall Ground',style: TextStyle(
                           fontFamily: 'Athiti-Regular',
                           fontWeight: FontWeight.bold,
                           color: Colors.blue,
                           fontSize: 25,

                         ),
                      

                   ),
                
                  SizedBox(
                     height: 10,
                   ), 
                 Image.asset('assets/images/handball.jpg'),
                 SizedBox(
                     height: 10,
                   ), 
                Text(
                         'Central Field',style: TextStyle(
                           fontFamily: 'Athiti-Regular',
                           fontWeight: FontWeight.bold,
                           color: Colors.blue,
                           fontSize: 25,

                         ),
                      

                   ),
                
                  SizedBox(
                     height: 10,
                   ), 
                 Image.asset('assets/images/field.jpg'),
                 SizedBox(
                     height: 10,
                   ), 
                Text(
                         'Shahid Minar',style: TextStyle(
                           fontFamily: 'Athiti-Regular',
                           fontWeight: FontWeight.bold,
                           color: Colors.blue,
                           fontSize: 25,

                         ),
                      

                   ),
                
                  SizedBox(
                     height: 10,
                   ), 
                 Image.asset('assets/images/minar.jpg'),
                 SizedBox(
                     height: 10,
                   ), 
                Text(
                         'Tong',style: TextStyle(
                           fontFamily: 'Athiti-Regular',
                           fontWeight: FontWeight.bold,
                           color: Colors.blue,
                           fontSize: 25,

                         ),
                      

                   ),
                
                  SizedBox(
                     height: 10,
                   ), 
                 Image.asset('assets/images/tong.jpg'),
                  SizedBox(
                     height: 10,
                   ), 
                 Container().skeleton(height: 20, width: 200,color: Vx.yellow700,stretchWidth: 20),



                 ],
               ),
             ),
           ),
         
        
      
        
      ),
    );
  }
}
