import 'package:chatbot/splash.dart';
import 'package:chatbot/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);



  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  final formkey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController ();
//final TextEditingController passwordController = new TextEditingController ();
final TextEditingController firstNameController = new TextEditingController ();
final TextEditingController SecondNameController = new TextEditingController ();
final TextEditingController confirmpasswordController = new TextEditingController ();
final TextEditingController passwordController = new TextEditingController ();

final auth=FirebaseAuth.instance;
//sign up method
void signUp(String email,String password)async{


  if(formkey.currentState!.validate())
  {

   await auth.createUserWithEmailAndPassword(email: email, password: password)
   .then(
      (value)=>{
      detailsforFirestore() 

      }
   ).catchError((e)
   {
     Fluttertoast.showToast(msg: e!.message);
   }
   
   
   );

  }
}

void detailsforFirestore()async{


//calling firestore
//calling usermodel
//sending values
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
User? user =auth.currentUser;
UserModel userModel;
userModel= UserModel();

userModel.email=user.email;
userModel.uid=user.uid;
userModel.firstname=firstNameController.text;
userModel.secondname=SecondNameController.text;

await firebaseFirestore
.collection("users")
.doc(user.uid)
.set(userModel.toMap());
Fluttertoast.showToast(msg: "Account Created Successfully");
Navigator.pushAndRemoveUntil((context),MaterialPageRoute(builder: (context)=> Splash()) ,
(route) => false);


}













  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        //foregroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
            print('p');
          },
          child:Icon(Icons.arrow_back_ios_new,
          color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black,
      
      body: SingleChildScrollView(
         child: Column(
           children: [
            
             Container(
                height: 200,
                width: 200,
                child:Image.asset('assets/bot/bot5.gif'),
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
                //firstname
                       TextFormField(
                         style: TextStyle(color: Colors.black),
                         autofocus: false,
                         controller: firstNameController,
                         decoration: InputDecoration(
                           prefixIcon: Icon(Icons.account_circle),
                           contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                           hintText: 'First Name',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          fillColor: Colors.white,
                          filled: true,
                          
                
                         ),
                         onSaved: (value)
                         { 
                          firstNameController.text = value!;
                
                
                         },
                         validator: (value)
                         {
                           RegExp regex = new RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ("First Name is required for SignUp");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Name(Min. 3 Character)");
          }
          return null;
                           
                         },
                         textInputAction: TextInputAction.next,
                
                       ),
                       SizedBox(height: 15,),
                     //secondname 
                     TextFormField(
                         style: TextStyle(color: Colors.black),
                         autofocus: false,
                         
                         controller: SecondNameController,
                         obscureText: false,
                         decoration: InputDecoration(
                           prefixIcon: Icon(Icons.account_circle),
                           contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                           hintText: 'Last Name',
                           fillColor: Colors.white,
                           focusColor: Colors.yellow,
                          filled: true,
                          //focusColor: Colors.yellow,
                           border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                           
                          
                
                         ),
                         onSaved: (value)
                         { 
                          SecondNameController.text = value!;
                
                
                         },
                         validator: (value)
                         {
                            RegExp regex = new RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ("Last Name is required for SignUp");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Name(Min. 3 Character)");
          }
          return null;
                           
                         },
                         textInputAction: TextInputAction.done,
                
                       ),
                     //email
                      SizedBox(height: 15,),

                       TextFormField(
                         style: TextStyle(color: Colors.black),
                         autofocus: false,
                         controller: emailController,
                         decoration: InputDecoration(
                           prefixIcon: Icon(Icons.email_rounded),
                           contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                           hintText: 'Email',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          fillColor: Colors.white,
                          filled: true,
                          
                
                         ),
                         onSaved: (value)
                         { 
                          emailController.text = value!;
                
                
                         },
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
                         textInputAction: TextInputAction.next,
                
                       ),
                      //password
                       SizedBox(height: 15,),
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
                         onSaved: (value)
                         { 
                          passwordController.text = value!;
                
                
                         },
                         validator: (value)
                         {
                           RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
          return null;
                           
                         },
                         textInputAction: TextInputAction.done,
                
                       ),
                       //Confirm
                        SizedBox(height: 15,),
                       TextFormField(
                         style: TextStyle(color: Colors.black),
                         autofocus: false,
                         
                         controller: confirmpasswordController,
                         obscureText: true,
                         decoration: InputDecoration(
                           prefixIcon: Icon(Icons.vpn_lock_outlined),
                           contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                           hintText: 'Confirm Password',
                           fillColor: Colors.white,
                           focusColor: Colors.yellow,
                          filled: true,
                          //focusColor: Colors.yellow,
                           border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                           
                          
                
                         ),
                         onSaved: (value)
                         { 
                          confirmpasswordController.text = value!;
                
                
                         },
                         validator: (value)
                         {
                           if(value!=passwordController.text)
                           {
                             return "Confirm password did'not match";
                           }

                           return null;
                           
                         },
                         textInputAction: TextInputAction.done,
                
                       ),
                        SizedBox(height: 20,),
                
                    ElevatedButton(
                
                      child: Text('Sign Up'),
                      onPressed: ()
                      {
                          signUp(emailController.text,passwordController.text);
                      },
                
                    )
                
                
                
                
                  ],
                  ),
                )
              
              
              
              ),
              
              
              








           ],
         ),



      ),
      
    );
  }
}