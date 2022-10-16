import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/add_jobs.dart';
import 'package:practice/apijobs.dart';
import 'package:practice/govt_jobs.dart';
import 'package:practice/homepage.dart';
import 'package:practice/jobcompanies.dart';
import 'package:practice/main.dart';
import 'package:practice/unis.dart';
import 'package:url_launcher/url_launcher.dart';

import 'news.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade800,
        child: Icon(Icons.post_add_rounded),
        onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context) => Addjobs()));
        },
      ),
      backgroundColor: Colors.purple.shade50,
      body: Container(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('images/user.png'),
            SizedBox(height: 17),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              color: Colors.indigo.shade300,
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                title: Center(
                  child: Text(
                    'Universities',
                    style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                    ),
                ),
                subtitle: Text(''),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Uni()));
                },
              ),
            ),


            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              color: Colors.indigo.shade300,
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                title: Center(child: Text(
                   style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                  ' Local jobs')),
                subtitle: Text(
                    ''),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              color: Colors.indigo.shade300,
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                title: Center(child: Text(
                  style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                  'Government jobs')),
                subtitle:
                    Text(''),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Govt()));
                },
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              color: Colors.indigo.shade300,
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                title: Center(child: Text(
                  style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                  'Job websites')),
                subtitle: Text(
                    ''),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Jobsites()));
                },
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              color: Colors.indigo.shade300,
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                title: Center(child: Text(
                  style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                  'News Articles')),
                subtitle: Text(
                    ''),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => NewsFeed()));
                },
              ),
            ),

            

          ]),
        ),
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
            'Categories')),
    );
  }
}
