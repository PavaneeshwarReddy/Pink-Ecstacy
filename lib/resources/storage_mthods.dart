import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';


class StorageMethods
{
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //adding image to firebase storage
  Future<String> uploadImageStorage(String childName,Uint8List file,bool isPost) async 
  {
      Reference ref1=  _storage.ref().child(childName).child(_auth.currentUser!.uid); 
      UploadTask uploadTask = ref1.putData(file);
      TaskSnapshot snap = await uploadTask;
      print("photo added");
      return snap.ref.getDownloadURL();//the download url of the uploaded file is present here.
      
      
  }
    

}