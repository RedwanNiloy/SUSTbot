import 'package:cloud_firestore/cloud_firestore.dart';
//making a model to store info from firestore so that we can wasily use them
class UserModel{

String? uid;
String? email;
String? firstname;
String? secondname;

UserModel({this.uid,this.email,this.firstname,this.secondname});


//data from firestore
factory UserModel.fromMap(map)
{
  return UserModel(


    uid:map['uid'],
    email:map['email'],
    firstname: map['firstname'],
    secondname: map['secondname'],
  );
}


//sending data to server

Map<String,dynamic>toMap(){
return{

'uid':uid,
'email':email,
'firstname':firstname,
'secondname':secondname,





};

}









}