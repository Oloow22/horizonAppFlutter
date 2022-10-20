
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:practice/homepage.dart';
import 'package:practice/options.dart';
import 'package:url_launcher/url_launcher.dart';

class Govt extends StatefulWidget {
  const Govt({super.key});

  @override
  State<Govt> createState() => _GovtState();
}

class _GovtState extends State<Govt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade800,
        child: Icon(Icons.home),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Options()));
        },
      ),
      backgroundColor: Colors.purple.shade50,
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(height: 25,),
            Image.asset('images/govt.png'),
            SizedBox(height: 19,),
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
                    'Works and Transport')),
                  subtitle: Text(''),
                  onTap: () async {
                    const url = 'https://www.works.go.ug/index.php/opportunities/jobs-and-careers';
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
                  title: Center(child: Text(
                    style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                    'Public Service')),
                  subtitle: Text(''),
                  onTap: () async {
                    const url = 'http://psc.go.ug/jobs';
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
                  title: Center(child: Text(
                    style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                    'Health')),
                  subtitle: Text(''),
                  onTap: () async {
                    const url = 'https://www.health.go.ug/category/job-opportunities/';
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
                  title: Center(child: Text(
                    style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                    'Foreign Affairs')),
                  subtitle: Text(''),
                  onTap: () async {
                    const url = 'https://www.mofa.go.ug/data/jobs/11/Jobs.html';
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
                  title: Center(child: Text(
                    style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                    'Education and Sports')),
                  subtitle: Text(''),
                  onTap: () async {
                    const url = 'https://www.education.go.ug/careers/';
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
                  title: Center(child: Text(
                    style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                    'Agriculture, Animal Industry and Fisheries ')),
                  subtitle: Text(
                      ''),
                  onTap: ()async{
                   const url = 'https://www.agriculture.go.ug/jobs/';
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
                  title: Center(child: Text(
                    style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                    'Energy and Mineral Development')),
                  subtitle: Text(
                      ''),
                  onTap: () async{
                    const url = 'https://energyandminerals.go.ug';
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
                  title: Center(child: Text(
                    style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                    'Finance,Planning and Economic Development')),
                  subtitle: Text(
                      ''),
                  onTap: () async{
                    const url = 'https://www.finance.go.ug/Jobs';
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
            'Institutions')),
    );
  }
}
