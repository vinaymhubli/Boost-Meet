import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';
import 'package:share_plus/share_plus.dart';
class AddMeeting extends StatefulWidget {
  AddMeeting({Key? key}) : super(key: key);

  @override
  State<AddMeeting> createState() => _AddMeetingState();
}

class _AddMeetingState extends State<AddMeeting> {
  TextEditingController controller = TextEditingController();
  String _meetingCode = "preparingcode";
 final Uri _url = Uri.parse('https://workspace.google.com/intl/en_in/products/meet/');
  Future<void> _launchUrl() async {
    
  if (!await launchUrl(_url)) {
    
    throw 'Could not launch $_url';
  }
  }
  @override
  void initState() {
    var uuid = Uuid();
    _meetingCode = uuid.v4().substring(0, 8);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color:Color.fromARGB(255, 5, 43, 141) ,),
        onPressed: (){Navigator.pop(context);},
        ),
          systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 5, 43, 141),
        )
      ),
      body: SingleChildScrollView(  
        child: Column(
          children: [
            Lottie.asset("assets/add.json",height: 200,width: 500),
            Text("Your Meeting Is Ready",style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(
              color:Color.fromARGB(255, 5, 43, 141),fontSize: 20,fontWeight: FontWeight.bold ))),
               SizedBox(height: 10),
            Padding(padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Card(
               color: Colors.teal.withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                    child: ListTile(
                    leading: Icon(Icons.link,color:Colors.white54,),
                    title: SelectableText(
                      _meetingCode,
                      style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white54),
                    ),
                    trailing: Icon(Icons.copy,color:Colors.white54),
                    
                  ),
                  ),
                  
            ),
            SizedBox(height: 45,),
            ElevatedButton.icon(
              onPressed: (){
              Share.share("Meeting Code:-$_meetingCode");
              },
             icon: Icon(Icons.share_rounded) ,label: Text("Share/Invite",style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(fontSize: 21))),
             style: ElevatedButton.styleFrom(
              fixedSize: Size(320,50),
              primary: Color.fromARGB(255, 5, 43, 141),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                
              )
             ),
             ),
             SizedBox(height: 15,),
         ElevatedButton.icon(
              onPressed: (){
                _launchUrl();
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>VedioCall()));
              },
             icon: Icon(Icons.video_call_rounded,color: Color.fromARGB(255, 5, 43, 141),), label: Text("Start",style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(fontSize: 21,color: Color.fromARGB(255, 5, 43, 141)))),
             style: ElevatedButton.styleFrom(
              side: BorderSide(color: Color.fromARGB(255, 5, 43, 141)),
              fixedSize: Size(320,50),
              primary: Colors.grey.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
              )
             ),
             ),
            
            ])
          
        ),
      );
    
  }
}