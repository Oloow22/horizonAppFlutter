import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:practice/add_jobs.dart';
import 'package:practice/apply_job.dart';
import 'package:practice/main.dart';
import 'package:practice/signup.dart';
import 'package:practice/visiblejobs.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';

class Home extends StatefulWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final dio = Dio(BaseOptions(baseUrl: 'PASTE URL', headers: {
    'user-key': DotEnv().env['JOB_SEARCH_API_KEY'],
  }));

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  late List _jobs;
  var _search;
  var _autoValidate = false;

  late String query;
  void searchJobs(String query) async {
    final Response = await widget.dio.get('PASTE THE URL', queryParameters: {
      'q': Query,
    });
    setState(() {
      _jobs = Response.data['PARAMETERS'];
    });
    print(Response);
  }

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: Center(
        child: Column(
          children: <Widget>[
            Form(
                //key: _formKey,
                autovalidateMode: null,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Enter Search',
                          border: OutlineInputBorder(),
                          filled: true),
                      onChanged: (value) {
                        setState(() {});
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a search term';
                        }
                        return null;
                      },
                    ),
                  ],
                )
                ),
                _jobs != null ? Text('Got ${_jobs.length} results'):
            SizedBox(
                width: double.infinity,
                child: FloatingActionButton(
                  onPressed: () {
                    // ignore: unused_local_variable
                    final _isValid = _formKey.currentState!.validate();
                    if (_isValid) {
                      searchJobs(query);
                      // do perform search
                    } else {
                      // dont perform search
                      setState(() {
                        _autoValidate = true;
                      });
                    }
                  },
                  backgroundColor: Colors.purple,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'Search for a job',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade800,
        child: Icon(Icons.post_add_rounded),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Addjobs()));
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
        title: Text('BROWSE JOBS AND SEARCH FOR MORE'),
      ),
    );
  }
}

class _formKey {
  static var currentState;
}
