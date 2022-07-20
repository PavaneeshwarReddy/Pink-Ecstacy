import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram/resources/storage_mthods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //sign up user
 Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    required Uint8List file,
    //required Uint8List file,//this is for images storage we use firebase storage
  })  async {

    String res ="Some error occured";
    try{
      if(email.isNotEmpty||password.isNotEmpty||bio.isNotEmpty||username.isNotEmpty)
      {
        //register user in email authentication
        //here if we remove await we get an error, related to two different types cannot be equal, this is due to auth require time to return the required one
       UserCredential cred= await  _auth.createUserWithEmailAndPassword(email: email, password: password);


         String photoUrl = await StorageMethods().uploadImageStorage('profilepics', file, false);


       //we have to add to firestore database
       //this means collection:users is created and unique id doc is set to that and next the data is passed
       //here if we create an another collection 'admins' and store their details then we can only allow that people to upload 
       _firestore.collection('users').doc(cred.user!.uid).set({
            'username':username,
            'uid':cred.user!.uid,
            'email':email,
            'bio':bio,
            'admin':false,
            'followers':[],
            'following':[],
            'profilephoto':photoUrl
       });
            res="success";
      }
    } catch(err)
    {
      res=err.toString();
    }
    return res;

  }
}
