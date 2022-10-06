

import 'package:cloud_firestore/cloud_firestore.dart';

class Djobs{
  String id ;
  String JobTitle ;
  String JobDescription ;
  Timestamp date ;

  Djobs({
    required this.id,
    required this.JobTitle,
    required this.JobDescription,
    required this.date,
});


factory Djobs.fromJson(DocumentSnapshot snapshot){
  return Djobs(
    id: snapshot.id,
    JobTitle: snapshot['JobTitle'],
    JobDescription: snapshot['JobDescription'] ,
    date: snapshot['date'],);
}
}

