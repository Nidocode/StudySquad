import 'package:flutter/material.dart';
import 'package:study_squad/classTabs/quiz/quizzes.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.score});
  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 1000,),
          Text("Your Score: ",
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),),
          Stack( // to put widgets on top of each other
            alignment: Alignment.center,
            children: [
              SizedBox(height: 250,
              width: 250,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                value: score / 10, // the score the user got divided by the number of questions to get value between 0.0 and 1.0
                color: Colors.green,
                backgroundColor: const Color.fromARGB(255, 202, 201, 201),
              ),
              ),
              Column(
                children: [Text(score.toString(), style: TextStyle(fontSize: 80),), SizedBox(height: 10,) ,Text('${( score / questions.length * 100).round()}%',style: TextStyle(fontSize: 25),)],
              )
            ],

          )
        ],
      ),
    );
  }
}