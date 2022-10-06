import 'package:flutter/material.dart';
import 'package:practice/succesfull.dart';
import 'package:google_fonts/google_fonts.dart';
class YourCv extends StatefulWidget {
  const YourCv({super.key});

  @override
  State<YourCv> createState() => _YourCvState();
}

class _YourCvState extends State<YourCv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Phone Number'),
              ),
          ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: 'Residence'),
                 ),
            ),
           SizedBox( height: 20,),
           Text(
            'Academic Backgroung',
            style:  GoogleFonts.acme(
                      color: Colors.purple.shade800,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              minLines: 5,
              maxLines: 10,
              decoration: InputDecoration(
              border: OutlineInputBorder()
            )),
          ), 

        Text(
            'Work experience',
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
              minLines: 5,
              maxLines: 10,
              decoration: InputDecoration(
              border: OutlineInputBorder()
            )),
          ), 

        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo.shade300),
          onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Success()));
        }, child: Text(
          style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
          'Submit my application'))

        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple.shade800,
        title: Text(
          style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
          'Input details and apply')),
    );
  }
}