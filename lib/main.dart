import 'package:flutter/material.dart';
import 'package:practice/add_jobs.dart';
import 'package:practice/govt_jobs.dart';
import 'package:practice/homepage.dart';
import 'package:practice/jobcompanies.dart';
import 'package:practice/options.dart';
import 'package:practice/unis.dart';
import 'package:practice/yourCV.dart';
import 'signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:dio/dio.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp> {
  String button2 = 'SIGNUP';
  String button1 = 'LOGIN';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple.shade50,
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        primary: Colors.indigo.shade300),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Signup();
                      }));
                    },
                    child: Text(
                        style: GoogleFonts.acme(
                            color: Colors.grey.shade50,
                            fontSize: 20,
                            fontStyle: FontStyle.normal),
                        'SIGNUP ')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        primary: Colors.indigo.shade300),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Login(); // change it to login later !
                      }));
                    },
                    child: Text(
                        style: GoogleFonts.acme(
                            color: Colors.grey.shade50,
                            fontSize: 20,
                            fontStyle: FontStyle.normal),
                        'LOGIN')),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset('images/cof.png'),
            ],
          )),
        ),
        appBar: AppBar(
          backgroundColor: Colors.purple.shade800,
          title: Text(
              style: GoogleFonts.acme(
                  color: Colors.grey.shade50,
                  fontSize: 20,
                  fontStyle: FontStyle.normal),
              'WELCOME TO HORIZON'),
        ));
  }
}
