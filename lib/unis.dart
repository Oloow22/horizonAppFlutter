//import 'dart:html';
//import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:practice/govt_jobs.dart';
import 'package:practice/homepage.dart';
import 'package:practice/options.dart';
import 'package:url_launcher/url_launcher.dart';

class Uni extends StatefulWidget {
  const Uni({super.key});

  @override
  State<Uni> createState() => _UniState();
}

class _UniState extends State<Uni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      bottomNavigationBar: BottomAppBar(
        color: Colors.indigo.shade200,
        child: Text(
            style: GoogleFonts.lato(
                color: Colors.grey.shade50,
                fontSize: 20,
                fontStyle: FontStyle.normal),
            'To learn more visit the official websites of these universities'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade200,
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Options()));
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                height: 15,
              ),
              Image.asset('images/univ.png'),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Text(
                    style: GoogleFonts.acme(
                        color: Colors.white,
                        fontSize: 20,
                        fontStyle: FontStyle.normal),
                    'Horizon allows you to easily apply to a university of your choice'),
              ),
              SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                color: Colors.indigo.shade300,
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  title: Center(
                      child: Text(
                          style: GoogleFonts.acme(
                              color: Colors.grey.shade50,
                              fontSize: 20,
                              fontStyle: FontStyle.normal),
                          'MAKERERE UNIVERSITY')),
                  subtitle: Text(''),
                  onTap: () async {
                    const url = 'https://admissions.mak.ac.ug';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
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
                  title: Center(
                      child: Text(
                          style: GoogleFonts.acme(
                              color: Colors.grey.shade50,
                              fontSize: 20,
                              fontStyle: FontStyle.normal),
                          'MBARARA UNIVERSITY')),
                  subtitle: Text(''),
                  onTap: () async {
                    const url = 'https://applications.must.ac.ug';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
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
                  title: Center(
                      child: Text(
                          style: GoogleFonts.acme(
                              color: Colors.grey.shade50,
                              fontSize: 20,
                              fontStyle: FontStyle.normal),
                          'KAMPALA INTERNATIONAL UNIVERSITY')),
                  subtitle: Text(''),
                  onTap: () async {
                    const url = 'https://admissions.kiu.ac.ug';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
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
                  title: Center(
                      child: Text(
                          style: GoogleFonts.acme(
                              color: Colors.grey.shade50,
                              fontSize: 20,
                              fontStyle: FontStyle.normal),
                          'GULU UNIVERSITY')),
                  subtitle: Text(''),
                  onTap: () async {
                    const url = 'https://apply.gu.ac.ug';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
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
                  title: Center(
                      child: Text(
                          style: GoogleFonts.acme(
                              color: Colors.grey.shade50,
                              fontSize: 20,
                              fontStyle: FontStyle.normal),
                          'UGANDA MARTYRS UNIVERSITY')),
                  subtitle: Text(''),
                  onTap: () async {
                    const url = 'https://student.umu.ac.ug/portal-2.3/?cache';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
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
                  title: Center(
                      child: Text(
                          style: GoogleFonts.acme(
                              color: Colors.grey.shade50,
                              fontSize: 20,
                              fontStyle: FontStyle.normal),
                          'NDEJJE UNIVERSITY')),
                  subtitle: Text(''),
                  onTap: () async {
                    const url = 'https://admissions.ndu.ac.ug';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
      appBar: AppBar(
          backgroundColor: Colors.purple.shade800,
          title: Text(
              style: GoogleFonts.acme(
                  color: Colors.grey.shade50,
                  fontSize: 20,
                  fontStyle: FontStyle.normal),
              'Apply for admission')),
    );
  }
}
