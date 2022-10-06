import 'package:flutter/material.dart';
import 'package:practice/login.dart';
import 'package:practice/visiblejobs.dart';
import 'package:practice/yourCV.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplyJob extends StatefulWidget {
  Djobs jobz ;
  ApplyJob(this.jobz);

  @override
  State<ApplyJob> createState() => _ApplyJobState();
}

class _ApplyJobState extends State<ApplyJob> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  bool loading = false ;

  @override
  void initState() {
    titlecontroller.text = widget.jobz.JobTitle;
    descriptioncontroller.text = widget.jobz.JobDescription;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,

      appBar: AppBar(
        backgroundColor: Colors.purple.shade800,
        title: Text(
          style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
          'Apply for the job'),),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Text(
            'Contact the employee here',
            style:  GoogleFonts.acme(
                      color: Colors.purple.shade800,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: titlecontroller,
              decoration: InputDecoration(
              border: OutlineInputBorder()
            )),
          ),
          SizedBox( height: 20,),
          Text(
            'Description',
            style:  GoogleFonts.acme(
                      color: Colors.purple.shade800,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
          ),
          SizedBox(  height: 20, ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: descriptioncontroller,
              minLines: 5,
              maxLines: 10,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  
                )
              ),
            ),
          ),
          SizedBox(height: 30,),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)
                      ),
              primary: Colors.indigo.shade300),
            onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => YourCv()));
          }, child: Text(
            style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
            'Proceed to apply for the job'))
          

          
          

        ],
      )),
    );
  }
}