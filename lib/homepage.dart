import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/add_jobs.dart';
import 'package:practice/apply_job.dart';
import 'package:practice/main.dart';
import 'package:practice/signup.dart';
import 'package:practice/visiblejobs.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatefulWidget {

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('jobs').snapshots(),
        builder: (context, AsyncSnapshot snapshot){
          if(snapshot.hasData){
          if(snapshot.data.docs.length > 0){
            return ListView.builder(
              itemCount: snapshot.data.docs.length,   // a document snaphot contains data read from your doc in firestore.
              itemBuilder: (context , index){
             Djobs jobz = Djobs.fromJson(snapshot.data.docs[index]);
             return Card(
         shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              color: Colors.indigo.shade300,
              elevation: 5,
              margin: EdgeInsets.all(10),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            title: Center(child: Text(jobz.JobTitle,style:  GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),)),
            subtitle: Center(child: Text(jobz.JobDescription, style:  GoogleFonts.acme(
                      color: Colors.black,
                      fontSize: 17,
                      fontStyle: FontStyle.normal
                    ),)),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ApplyJob(jobz)));
            },
          ),

        );
              }
              );
          }else{
            return Center(
              child: Text('No job yet'),
            );
          }
          }
        return Center(
          child: CircularProgressIndicator(),
        );
        }
        ),
      
      

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade800,
        child: Icon(Icons.post_add_rounded),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Addjobs()));
        },
      ),
      
      appBar: AppBar(
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                  (route) => false);
            },
            icon: Icon(Icons.logout),
            label: Text('Signout'),
            style: TextButton.styleFrom(primary: Colors.white),
          )
        ],
        backgroundColor: Colors.purple.shade800,
        title: Text(
          style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
          'BROWSE JOBS'),
      ),
    );
  }
}
