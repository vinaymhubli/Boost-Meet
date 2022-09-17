import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class JoinWithCode extends StatefulWidget {
  JoinWithCode({Key? key}) : super(key: key);

  @override
  State<JoinWithCode> createState() => _JoinWithCodeState();
}

class _JoinWithCodeState extends State<JoinWithCode> {
  TextEditingController controller = TextEditingController();
  final Uri _url = Uri.parse('https://apps.google.com/meet/');
  Future<void> _launchUrl() async {
    
  if (!await launchUrl(_url)) {
    
    throw 'Could not launch $_url';
  }
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
            
            Lottie.asset("assets/join.json",width: 700,height: 120),
            SizedBox(height: 20,),
            Text("Enter Meeting Code Below",style: GoogleFonts.akayaKanadaka(textStyle: TextStyle(
              color:Color.fromARGB(255, 5, 43, 141),fontSize: 25,fontWeight: FontWeight.bold ))),
              SizedBox(height: 20),
          
              ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(width: 280),
                child: TextField(
                  
                  controller: controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    
                   
                    filled: true,
                    fillColor:Colors.teal.withOpacity(0.8),
              
                    // focusColor: Color.fromARGB(255, 5, 43, 141),
                    hintText: "Enter the code",
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                    
                    borderSide:BorderSide(color: Color.fromARGB(255, 236, 4, 162).withOpacity(0.5)),
                   borderRadius: BorderRadius.circular(25),
                   ),
                   enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(0, 255, 255, 255)),
                   borderRadius: BorderRadius.circular(25)
                   
                   ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(onPressed: (){
                _launchUrl();
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>VedioCall()));
              },

              child:Text("Join",style: GoogleFonts.akayaKanadaka(fontSize: 25),),
                style: ElevatedButton.styleFrom(
                fixedSize: Size(140,50),
                primary: Color.fromARGB(255, 5, 43, 141),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
                )
               ),
              )
          ],
        ),
      ),
    );
  }
}