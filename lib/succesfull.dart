import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/main.dart';
import 'package:practice/options.dart';
import 'homepage.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade800,
        child: Icon(Icons.home_filled),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Options()));
        },
      ),
       backgroundColor: Colors.purple.shade50,
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
          'Good luck !')),
      body: 
      
        
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                 minimumSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)
                      ),
                backgroundColor: Colors.indigo.shade300
              ),
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder:((context) => Home()) ) );
              }, child: Text(
                style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                 ' Click to browse more jobs')),
          )
        
      
    );
  }
}