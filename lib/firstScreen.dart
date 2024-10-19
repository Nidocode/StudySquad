import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Container(
          width: 240,
          height: 220,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 35, bottom: 20),
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("lib/images/StudySquad.png"),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            alignment: Alignment.center,
            child: Text("Hello!",
                textAlign: TextAlign.center,
                style: GoogleFonts.titilliumWeb(
                    textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )))),
        Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(60, 8, 60, 30),
            child: Text(
                "Get inspired with interactive study tools \n that help you stay organized and succeed!",
                textAlign: TextAlign.center,
                maxLines: 4,
                style: GoogleFonts.titilliumWeb(
                    textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                )))),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 265,
          height: 65,
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: ElevatedButton(
            child: Text(
              "LOGIN",
              textAlign: TextAlign.center,
              style: GoogleFonts.titilliumWeb(textStyle:TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2,
              ) ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "login");
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(54, 174, 226, 0.992)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)))),
          ),
        ),
        Container(
          width: 265,
          height: 65,
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: ElevatedButton(
            child: Text(
              "SIGNUP",
              textAlign: TextAlign.center,
              style: GoogleFonts.titilliumWeb(textStyle:TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2,
              ) ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "signup");
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromRGBO(54, 174, 226, 0.992)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)))),
          ),
        ),
      ]),
    );
  }
}
