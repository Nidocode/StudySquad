
import 'package:flutter/material.dart';

class StudyTechniquesPage extends StatelessWidget {
  const StudyTechniquesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 20,),
          buildStudyTechniqueCard(
            'Pomodoro',
            'Study for 25+ minutes, take 5-minute break.',
            'Good for: Science, Medical, Programming, Languages',
          ),
          SizedBox(height: 20,),
          buildStudyTechniqueCard(
            'Feynman',
            'Best way to learn any topic is by teaching it to a 6-year-old.',
            'Good for: All subjects',
          ),
          SizedBox(height: 20,),
          buildStudyTechniqueCard(
            'SQ3R',
            'Survey, Question, Read, Recite, Review',
            'Good for: History, Biology, Languages',
          ),
          SizedBox(height: 20,),
          buildStudyTechniqueCard(
            'Blurting',
            'Rapid idea sharing without filters.',
            'Good for: All subjects',
          ),
          SizedBox(height: 20,),
          buildStudyTechniqueCard(
            'Active Recall',
            'Create questions yourself regularly and test yourself.',
            'Good for: Science, Medical, History, Languages',
          ),
          SizedBox(height: 20,),
          buildStudyTechniqueCard(
            'Leitner',
            'Flash cards.',
            'Good for: Medical, Science, Languages',
          ),
          SizedBox(height: 30,),
        ],
      ),
    );

  }
}

Widget buildStudyTechniqueCard(String title, String description, String goodFor) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 360,
        child: Card(
          color: Color.fromARGB(248, 245, 243, 243),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Text(description),
                const SizedBox(height: 8),
                Text('$goodFor'),
              ],
            ),
        ),
        ),
      ),
    );
}

