import 'package:flutter/material.dart';
import 'package:practice/firestore_service.dart';
import 'package:google_fonts/google_fonts.dart';
class Addjobs extends StatefulWidget {
  
  const Addjobs({super.key});

  @override
  State<Addjobs> createState() => _AddjobsState();
}

class _AddjobsState extends State<Addjobs> {
  TextEditingController titlecontroller = TextEditingController(); //whenever the user modifies a text field with an associated controller the text field updates value.
  TextEditingController descriptioncontroller = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox( height: 70,),
          Text(
            'Kind of Job, And company name.',
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
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 4,
                  color: Colors.cyan
                )
              )
            )),
          ),
          SizedBox( height: 20,),
          Text(
            'Job Description and requirements for applying ',
            style:  GoogleFonts.acme(
                      color: Colors.purple.shade800,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: descriptioncontroller ,
              minLines: 5,
              maxLines: 10,
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 30,),
          loading ? Center(child: CircularProgressIndicator(),):Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)
                      ),
                  primary: Colors.indigo.shade300),
                onPressed: ()async{
                  if (titlecontroller.text =='' || descriptioncontroller.text=='' ){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('All must be filled!')),);
                  }else{
                    setState(() {
                      loading = true;
                    });
                    await FirestoreService().post_job(titlecontroller.text, descriptioncontroller.text);
                    setState(() {
                      loading = false;
                    });
                    Navigator.pop(context);

                  }
                }, child: Text(
                 style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
                  'Post Job'),),
            ),
          ),
        SizedBox(height: 30,),

        Image.asset('images/office.png')
          

        ],
      )),
      appBar: AppBar(
        backgroundColor: Colors.purple.shade800,
        title: Text(
          style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
          'Input job details'),
      ),
    );
  }
}
