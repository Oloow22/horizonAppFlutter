//import 'dart:html';
//import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:practice/govt_jobs.dart';
import 'package:practice/homepage.dart';
import 'package:practice/options.dart';
import 'package:url_launcher/url_launcher.dart';

class Jobsites extends StatefulWidget {
  const Jobsites({super.key});

  @override
  State<Jobsites> createState() => _JobsitesState();
}

class _JobsitesState extends State<Jobsites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade200,
        child: Icon(Icons.home),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Options()));
        },
      ),
      
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
               SizedBox(height: 16,),
               Image.asset('images/case.png'),
               SizedBox(height: 16,),
               Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                color: Colors.pink.shade200,
                elevation: 3,
                margin: EdgeInsets.all(7),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  title: Center(child: Text(
                    style: GoogleFonts.acme(
                        color: Colors.grey.shade50,
                        fontSize: 20,
                        fontStyle: FontStyle.normal
                      ),
                    'JOB WEB UGANDA')),
                  subtitle: Text(''),
                  onTap: ()async{
                    const url = 'https://jobwebuganda.com';
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
                color: Colors.red,
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
                    'KAZI JOBS')),
                  subtitle: Text(''),
                  onTap: ()async{
                    const url = 'https://www.kazijobs.com';
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
                color: Colors.deepOrangeAccent,
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
                    'BRIGHTER MONDAY')),
                  subtitle: Text(''),
                  onTap: ()async{
                    const url = 'https://www.brightermonday.co.ug';
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
                color: Colors.teal.shade600,
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
                    'UGANDA JOB.COM')),
                  subtitle: Text(
                      ''),
                  onTap: ()async{
                    const url = 'https://www.ugandajob.com';
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
                color: Colors.blue.shade200,
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
                    'THE UGANDA JOB ONLINE')),
                  subtitle:
                      Text(''),
                  onTap: ()async{
                    const url = 'https://www.theugandanjobline.com';
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
                color: Colors.teal,
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
                    'FUZU')),
                  subtitle: Text(
                      ''),
                  onTap: ()async{
                    const url = 'https://www.fuzu.com/uganda';
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
                      fontStyle: FontStyle.normal
                    ),
            'Select a preffered job site')),
    );
  }
}
