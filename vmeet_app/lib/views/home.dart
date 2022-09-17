import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:vmeet_app/views/join_with_code.dart';
import 'package:vmeet_app/views/new_meeting.dart';
class VedioHome extends StatefulWidget {
  VedioHome({Key? key}) : super(key: key);

  @override
  State<VedioHome> createState() => _VedioHomeState();
}

class _VedioHomeState extends State<VedioHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Boost Meet",style: GoogleFonts.akayaKanadaka(
          textStyle: TextStyle(color: Color.fromARGB(255, 5, 43, 141),fontSize: 40,
          fontWeight: FontWeight.bold)),),
          systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 5, 43, 141),
        
        )
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(2, 45, 0, 0),
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddMeeting()));
              },
             icon: Icon(Icons.add_link), label: Text("Add Meeting",style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(fontSize: 21))),
             style: ElevatedButton.styleFrom(
              fixedSize: Size(320,50),
              primary: Color.fromARGB(255, 5, 43, 141),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
              )
             ),
             ),
             SizedBox(height: 20,),
            //  Divider(thickness: 2,height: 20,indent: 10,endIndent: 10,color: Colors.teal.shade200,),
              ElevatedButton.icon(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>JoinWithCode()));
              },
             icon: Icon(Icons.add_link,color: Color.fromARGB(255, 5, 43, 141),), label: Text("Join With Code",style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(fontSize: 21,color: Color.fromARGB(255, 5, 43, 141)))),
             style: ElevatedButton.styleFrom(
              side: BorderSide(color: Color.fromARGB(255, 5, 43, 141)),
              fixedSize: Size(320,50),
              primary: Colors.grey.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
              )
             ),
             ),
             Lottie.asset("assets/meeting.json")
          ],
        ),
      ),
    );
  }
}