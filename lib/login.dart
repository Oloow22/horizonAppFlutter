import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:practice/fetchingdata.dart';
import 'package:practice/jobcompanies.dart';
import 'package:practice/options.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email1 = '';
  String password1 = '';
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (vaue){
                setState(() {
                  email1 = vaue.trim();
                });
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: 'Email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: (vaue){
                setState(() {
                  password1 = vaue.trim();
                });
              },
              obscureText: true,
              decoration: InputDecoration(hintText: 'Password'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                       minimumSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)
                      ),
                        primary: Colors.indigo.shade300),
                    onPressed: () {
                      auth.signInWithEmailAndPassword(email: email1, password: password1);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:((context) => RemotewxApi()) ) );
                     // Navigator.of(context).pushReplacement(MaterialPageRoute(builder:((context) => Options()) ) );
                    },
                    child: Text(
                      style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                      'LOG ME IN')),
              ),
            ],
         
          ),
        Image.asset('images/login.png')
        ],
      ),
      appBar: AppBar(
            backgroundColor: Colors.purple.shade800,
            title:  Text(
              style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
              'LOGIN '),
          )
    );
  }
}