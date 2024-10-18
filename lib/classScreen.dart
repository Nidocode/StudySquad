

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_squad/classTabs/quiz/quizzes.dart';
import 'package:study_squad/classTabs/resources.dart';
import 'package:study_squad/classTabs/statistics.dart';
import 'package:study_squad/classTabs/studyTechnique.dart';





class Classscreen extends StatefulWidget {
  const Classscreen({super.key});

  @override
  State<Classscreen> createState() => _Classscreen();
}

class _Classscreen extends State<Classscreen> {



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          toolbarHeight: 100,
          centerTitle: true,
          title: Text(
            "Mobile App Engineering",
            style:GoogleFonts.titilliumWeb(textStyle: TextStyle(color: Colors.white, fontSize: 26),),
          ),
          backgroundColor: Color.fromRGBO(54, 174, 226, 0.992),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white, size: 25,)),
          bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              tabAlignment: TabAlignment.center,
              unselectedLabelColor: const Color.fromARGB(255, 201, 201, 201),
              labelColor: Colors.white,
              tabs: [
                Tab(
                  child: Text(
                    "quizzes",
                    style: GoogleFonts.titilliumWeb(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                  ),
                ),
                Tab(
                  child: Text(
                    "statistics",
                    style: GoogleFonts.titilliumWeb(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400) ),
                  ),
                ),
                Tab(
                  child: Text(
                    "resources",
                    style: GoogleFonts.titilliumWeb(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400) ),
                  ),
                ),
                Tab(
                  child: Text(
                    "study technique",
                    style: GoogleFonts.titilliumWeb(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400) ),
                  ),
                )
              ]),
        ),
        body: TabBarView(
          children: [
            QuizScreen(),
            
            Statistics(
              questions: questions,
              score: 6 , // Pass the current score
            ),
            ResourcesPage(),
            StudyTechniquesPage(),
          ],
        ),
      ),
    );
  }
}
