


import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService{
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future post_job(String JobTitle, String JobDescription)async{
  try{
  await firestore.collection('jobs').add({
    'JobTitle': JobTitle,
    'JobDescription': JobDescription,
    'date':DateTime.now(),
  });
  }catch(e){

  }
  }
}