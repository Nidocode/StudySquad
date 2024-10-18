import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_squad/classTabs/quiz/quizzes.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.score});
  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 5,
          toolbarHeight:70,
          backgroundColor: Color.fromRGBO(54, 174, 226, 0.992),
          leading: IconButton(
            onPressed: () {Navigator.pushNamed(context, "classScreen");},
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
              size: 25,
            ),
            padding: EdgeInsets.all(10),
          ),
        ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150,),
            Text("Your Score",
            style: GoogleFonts.titilliumWeb(textStyle:TextStyle(fontSize: 34, fontWeight: FontWeight.w500) ),),
            SizedBox(height: 70,),
            Stack( // to put widgets on top of each other
              alignment: Alignment.center,
              children: [
                SizedBox(height: 250,
                width: 250,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  value: score / questions.length, // the score the user got divided by the number of questions to get value between 0.0 and 1.0
                  color: Colors.green,
                  backgroundColor: const Color.fromARGB(255, 202, 201, 201),
                ),
                ),
                Column(
                  children: [Text(score.toString(), style: GoogleFonts.titilliumWeb(textStyle:TextStyle(fontSize: 80) ),), SizedBox(height: 10,) ,Text('${( score / questions.length * 100).round()}%',style: GoogleFonts.titilliumWeb(textStyle:TextStyle(fontSize: 25) ),)],
                )
              ],
        
            )
          ],
        ),
      ),
    );
  }
}