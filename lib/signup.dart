import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email1 = '';
  String password1 = '';
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: Column(
        children: [
          SizedBox(height: 39,),
          Image.asset('images/comp.png'),
          SizedBox(height: 10,),
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
                      auth.createUserWithEmailAndPassword(email: email1, password: password1);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:((context) => Login()) ) );
                    },
                    child: Text(
                      style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                      'CREATE MY ACCOUNT ')),
              ),
            ],
          )
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
          'SIGNUP FROM HERE'),
      ),
    );
  }
}
