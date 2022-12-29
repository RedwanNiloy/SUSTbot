import 'package:chatbot/chatbot.dart';
import 'package:chatbot/signup.dart';
import 'package:chatbot/splash.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:fluttertoast/fluttertoast.dart';
//import 'package:chatbot/android.support.annotation.Nonnull';




class LogIn extends StatefulWidget {
  const LogIn({ Key? key }) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

final formkey = GlobalKey<FormState>();

final TextEditingController emailController = new TextEditingController ();
final TextEditingController passwordController = new TextEditingController ();

final auth = FirebaseAuth.instance;
//signIn
void signIN(String email,String password)async
{
if(formkey.currentState!.validate())
{
   await auth.signInWithEmailAndPassword(email: email, password: password)
   .then((uid) => {
     Fluttertoast.showToast(msg: 'Log In Succesful'),
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Splash() )),
   }
   ).catchError((e)
   {
     Fluttertoast.showToast(msg: e!.message);
   }
   
   );

}



}

@override
//logged in
//This method is use for to check if the user is logged in or not
  void initState() {
    // TODO: implement initState
    super.initState();
    auth.authStateChanges()
    .listen((User? user) {
        if(user==null)//if not logged in
        {
          
           print("no");

        }
        else{//if logged in
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>Splash() ));
          print("yes");

        }
     });

  }





  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Center(
              child:Column(
                
                      children:[
               SizedBox(height: 20,),
              Container(
                height: 200,
                width: 200,
                child:Image.asset('assets/bot/bot7.gif'),
              
              
              ),
              Text('SUSTbot',
              style:TextStyle(
                color: Colors.green,
                fontSize: 50,
                fontFamily:'robopixies-new-font',
              
              
              ),
              ),
              Form(
                key: formkey,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                
                       TextFormField(
                         style: TextStyle(color: Colors.black),
                         autofocus: false,
                         controller: emailController,
                         decoration: InputDecoration(
                           prefixIcon: Icon(Icons.email),
                           contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                           hintText: 'Email',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          fillColor: Colors.white,
                          filled: true,
                          
                
                         ),
                          validator: (value)
                         {
                           if(value!.isEmpty)
                           {
                             return ("An Email is must needed"); 
                           }
                           if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) 
                              {
                               return ("Please Enter a valid email");
                               }
                              
                              
                          return null;
                           
                         },
                         onSaved: (value)
                         { 
                          emailController.text = value!;
                
                
                         },
                         
                         textInputAction: TextInputAction.next,
                
                       ),
                       SizedBox(height: 15.0,),
                      
                     TextFormField(
                         style: TextStyle(color: Colors.black),
                         autofocus: false,
                         
                         controller: passwordController,
                         obscureText: true,
                         decoration: InputDecoration(
                           prefixIcon: Icon(Icons.vpn_key_rounded),
                           contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                           hintText: 'Password',
                           fillColor: Colors.white,
                           focusColor: Colors.yellow,
                          filled: true,
                          //focusColor: Colors.yellow,
                           border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                           
                          
                
                         ),

                        validator: (value)
                         {
                           RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) { 
            return ("Enter Valid Password(Min. 6 Character)");
          }
                           
                           
                         },

                         onSaved: (value)
                         { 
                          passwordController.text = value!;
                
                
                         },
                         
                         textInputAction: TextInputAction.done,
                
                       ),
                       SizedBox(height: 10,),
                
                    ElevatedButton(
                
                      child: Text('Log In'),
                      onPressed: ()
                      {

                      signIN(emailController.text, passwordController.text);
                
                      },
                
                    )
                
                
                
                
                  ],
                  ),
                )
              
              
              
              ),
                     // SizedBox(height: 10,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                      Text("Don't have an account? ",
                      style: TextStyle(
              color: Colors.white,
                      ),
                      
                      ),

                      //signup button
                      GestureDetector(
                       child: Text("Sign Up",
              style:TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                ),
                
                ),
              
                     onTap: ()
                     {
              
                 Navigator.of(context).push(MaterialPageRoute(builder: (_)=>SignUp() ));
                       
                     },
              
                      )
              
              
              
                   ],
                   ),
                   SizedBox(height: 5.0,),
                  /*Text('OR',
                  
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 5.0,),
                SignInButton(
  Buttons.Google,
  elevation: 5.0,
  
  text: "Sign up with Google",
  onPressed: () {
  



  },
)*/

              
                      ]
              ),
        
        
              ),
        ),
         
      
        
        
        
      ),
    
    
    
    
    
    
    );
  }
}