


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class Sust extends StatelessWidget   {


 String s='Shahjalal University of Science and Technology (SUST) is a public research university based in Sylhet, Bangladesh.It is the 8th oldest university of the country and the first university to adopt American credit system. The university is known for its pioneering research and education in the physical sciences and engineering. In 2016, SUST ranked as the top research university in Bangladesh (610th in the world) by Scopus-SCImago institution ranking.In 2017, the university had highest research expenditure among all universities in Bangladesh.Following the success of SUST, twelve more STEM universities have been established in the country by the Government of Bangladesh.';                                          
String k="Shahjalal University of Science and Technology was established in 1986. The campus is located in Kumargaon, approximately six kilometers away from the heart of Sylhet City Centre. The university started its academic program with three departments: physics, chemistry, and economics. Renowned scientist and educator Sadruddin Ahmed Chowdhury was the first Vice-chancellor of the university. The first convocation of SUST was held on 29 April 1998 and the second convocation held on 6 December 2007 where the third convocation was held on 8 January 2020.[8][9] At present, SUST has 7,662 students, 487 academic staffs and 772 administrative staffs; i.e. the university has 6.09 students per staff.SUST is the first university in Bangladesh providing whole campus free Wi-Fi access for students and staff.[10] The university introduced an integrated honors course for the first time in Bangladesh[5] and it introduced the semester system (American credit system) from the 1996-97 session. In 2019, Executive Committee of the National Economic Council (ECNEC) allocated BDT 9.88 billion (USD117 million) fund for 20 development projects of SUST.The students of SUST invented and introduced the paperless 24/7 SMS Based Automated Registration of Admission Test procedure for the first time in Bangladesh. Interested students can complete the registration process through mobile phone messages. The contemporary government launched the system on 13 September 2009.[11][12][13][14] For the invention, the university won an Ambillion Award in a competition of South Asian countries in 2010[10] and National Award for E-Content and ICT for Development Award 2010.[15][16] Now, most of the public universities in Bangladesh have adopted this process of registration.";
String m="SUST enrolls undergraduate, graduate and postgraduate students. All applicants need to pass the admission test arranged by the specific schools under the authority of admission council, which is highly competitive. In 2018-19 session, SUST received 76,068 undergraduate applications only admitting 1,448; an acceptance rate of 1.90%.[17][18] A total of 71,018 students vied for 1,703 seats at the university for the session 2019–2020.";
 String p="SUST gives high priority on research. In 2017, the university spent ৳137 million (USD1.6 million) in research; the highest research expenditure among all universities in Bangladesh, almost double of the 2nd one.[7]In 2016, SUST ranked as the top research university in Bangladesh (610th in the world) by Scopus-SCImago institution ranking.[6] In 2019, it ranked 337th[23] in Asia and 610th[24] in the world among 3,471 higher educational institutions. SUST ranked at 445th for research and 493rd for innovation in the world.[25] It ranked 1st in 2015[26] and 3rd in 2021[27] among all universities in Bangladesh by Webometrics.In 2018, the team from SUST became the world champion of NASA Space Apps Challenge among 1,395 local winning teams from around the world.[28][29] In the International Theoretical Physics Olympiad 2019, seven teams from SUST got place among finalist 88 and achieved 15th spot in the world (highest individual achievement of an Asian University).[30] Due to pioneering contributions in science and technology, the university is often referred as Stanford of the east.";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[900],
          
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
              
                    
                  SizedBox(
                   height: 20.0, 
                  ),
                   
                   
                     
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
          
                        child: Text(s,
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
                    SizedBox(
                      height: 10.0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                      child: Image.asset('assets/images/sust_1.jpg'),
                      
                      ),
                    ),
                    Text('Image: Versity Gate,SUST',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.yellow,

                    ),
                    
                    ),
              
                   SizedBox(
                      height: 10.0,
                    ),
                      
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
          
                        child: Text("History",
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
                      child: Image.asset('assets/images/old.jpg'),
                      
                      ),
                    ),
                    Text('Image: Versity Gate & 1Kilo,SUST',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.white,

                    ),
                    
                    ),
                  SizedBox(
                      height: 10.0,
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
                 

                 SizedBox(
                      height: 10.0,
                    ),
                      
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
          
                        child: Text("Admission",
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

                  SizedBox(
                      height: 10.0,
                    ),
                      
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
          
                        child: Text("Ranking and reputation",
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
        ),
        
        
        
      ),
    );
  }
}