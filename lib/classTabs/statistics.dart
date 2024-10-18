import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_squad/classTabs/quiz/question.dart';
import 'package:study_squad/classTabs/quiz/quizzes.dart';

class CardWidget extends StatelessWidget {
  CardWidget(
      {super.key,
      required this.score,
      required this.chName,
      required this.nQuestions,
      required this.canHavePieChart});

  final int score;
  final int nQuestions;
  final String chName;
  final bool canHavePieChart;

  Widget pie_chart() {
    if (canHavePieChart && nQuestions > 0) {
      double nTrue = (score / nQuestions * 100);
      double nFalse = 100 - nTrue;

      return Expanded(
        child: SizedBox(
          width: 120, // Specify width and height to constrain the PieChart.
          height: 120,
          child: PieChart(PieChartData(sections: [
            PieChartSectionData(
                value: nTrue,
                title: "$nTrue%",
                titleStyle: GoogleFonts.titilliumWeb(textStyle:TextStyle(fontSize: 16, color: Colors.white) ),
                color: Color.fromRGBO(27, 230, 27, 0.78),
                radius: 65),
            PieChartSectionData(
                value: nFalse,
                title: "$nFalse%",
                titleStyle: GoogleFonts.titilliumWeb(textStyle:TextStyle(fontSize: 16, color: Colors.white) ),
                color: Color.fromRGBO(255, 33, 66, 0.957),
                radius: 65)
          ], sectionsSpace: 1, centerSpaceRadius: 0)),
        ),
      );
    }
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "No data yet...",
            style: GoogleFonts.titilliumWeb(textStyle: TextStyle(color: Colors.grey, fontSize: 16) ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        border: Border.all(
          color: Color.fromRGBO(62, 197, 255, 0.892), //color of border
          width: 0.40,
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 212, 209, 209).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: 250,
      width: 320,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            chName,
            style: GoogleFonts.titilliumWeb(textStyle:TextStyle(fontSize: 15) ),
          ),
          Divider(
            color: Color.fromRGBO(62, 197, 255, 0.466),
            height: 25,
            thickness: 0.5,
          ),
          pie_chart()
        ],
      ),
    );
  }
}

class Statistics extends StatelessWidget {
  final List<Question> questions;
  final int score;

  const Statistics({
    super.key,
    required this.questions,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                CardWidget(
                    score: score,
                    chName: "Chapter 1: Introduction to Flutter and Dart",
                    nQuestions: questions.length,
                    canHavePieChart: true),
                SizedBox(height: 40),
                CardWidget(
                    score: 0,
                    chName: "Chapter 2: State Managment",
                    nQuestions: 0,
                    canHavePieChart: false),
                SizedBox(height: 40),
                CardWidget(
                    score: 0,
                    chName: "Chapter 3: Mobile Networking",
                    nQuestions: 0,
                    canHavePieChart: false),
                SizedBox(height: 35),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
