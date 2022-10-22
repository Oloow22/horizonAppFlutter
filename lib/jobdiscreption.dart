import 'package:flutter/material.dart';
import 'package:practice/apply_job.dart';
import 'package:practice/visiblejobs.dart';
import 'package:practice/yourCV.dart';

class DetailPage extends StatefulWidget {
  final logo;
  final String jobname;
  final String description;
  final String category;
  final String location;

  DetailPage(
      {Key? key,
      required this.logo,
      required this.jobname,
      required this.description,
      required this.category,
      required this.location});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.amber,
      //    //SizedBox(height: 60),
      //   flexibleSpace:

      //          // SizedBox(height: 30),
      // ),
      body: ListView(
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
              ),
              child: Column(children: [
                SizedBox(height: 80),
                Image.network((widget.logo), height: 70),
                SizedBox(height: 30),
                Text(
                  widget.jobname,
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                SizedBox(height: 5),
                Text(
                  widget.category,
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
                SizedBox(height: 30),
                Text(
                  widget.location,
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade300,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                          child: ElevatedButton(
                              onPressed: (() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => YourCv()));
                              }),
                              child: Text('APPY NOW'))),
                    ),
                  ],
                ),
              ])),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Description',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              // Text(
              //   'Requirements',
              //   style: TextStyle(color: Colors.blue, fontSize: 18),
              // ),
              // Text(
              //   'About',
              //   style: TextStyle(color: Colors.blue, fontSize: 18),
              // ),
            ],
          ),
          SizedBox(height: 25),
          Text(
            widget.description,
            style: TextStyle(color: Colors.blue, fontSize: 18),
          )
        ],
      ),
    );
  }
}
