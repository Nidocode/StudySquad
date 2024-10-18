import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_squad/classTabs/quiz/answer_card.dart';
import 'package:study_squad/classTabs/quiz/question.dart';
import 'package:study_squad/classTabs/quiz/result_Screen.dart';

const List<Question> questions = [
  Question(
      question: "1. What is Flutter ?",
      options: [
        'a) A programming language',
        'b) A web framework',
        'c) A UI toolkit for building natively compiled apps',
        'd) A game engine'
      ],
      answerIndex: 2),
  Question(
      question: "2. Which programming language is used by Flutter ?",
      options: ['a) Java', 'b) Kotlin', 'c) Swift', 'd) Dart'],
      answerIndex: 3),
  Question(
      question: "3. How do you declare a variable in Dart ?",
      options: [
        'a) let variableName = value;',
        'b) var variableName = value;',
        'c) declare variableName = value;',
        'd) new variableName = value;'
      ],
      answerIndex: 1),
  Question(
      question: "4. What is a StatelessWidget in Flutter ?",
      options: [
        'a) A widget that can update its appearance based on user interaction',
        'b) A widget that never changes its appearance or data',
        'c) A widget used only for animations',
        'd) A widget that always updates its state'
      ],
      answerIndex: 1),
  Question(
      question: "5. Which widget is used to display text in Flutter ?",
      options: ['a) Text', 'b) TextField', 'c) RichText', 'd) Label'],
      answerIndex: 0),
  Question(
      question: "6. How do you write a function in Dart ?",
      options: [
        'a) function myFunction() {}',
        'b) def myFunction() {}',
        'c) void myFunction() {}',
        'd) myFunction() {}'
      ],
      answerIndex: 2),
  Question(
      question:
          "7. Which of the following is a state management package in Flutter ?",
      options: ['a) Riverpod', 'b) BLoC', 'c) Provider', 'd) All of the above'],
      answerIndex: 3),
  Question(
      question: "8. What is the purpose of the setState() method in Flutter ?",
      options: [
        'a) To rebuild the widget when its state changes',
        'b) To destroy the widget',
        'c) To navigate between screens',
        'd) To initialize the widget'
      ],
      answerIndex: 0),
  Question(
      question: "9. How do you add an image to your Flutter app ?",
      options: [
        'a) Download the image on demand',
        'b) Add it to the assets folder and update pubspec.yaml',
        'c) Use Image.network() only',
        'd) Place it directly in the lib folder'
      ],
      answerIndex: 1),
  Question(
      question: "10. What is the root widget in a Flutter app ?",
      options: ['a) Scaffold', 'b) AppBar', 'c) MaterialApp', 'd) Container'],
      answerIndex: 2),
];

// the quiz questions list




class QuizScreen extends StatefulWidget {
   // Callback to update score and pass the cakue to the classScreen class

  

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int questionIndex = 0; // hold index of the curren question
  int? selectedCurrentAnswerIndex; // hold the index of the chosen option
  int score = 0;



  void pickAnswer(int indexValue) {
    // the index of the option that we have chosen
    selectedCurrentAnswerIndex = indexValue;
    final question = questions[questionIndex];

    if (selectedCurrentAnswerIndex == question.answerIndex) {
      score++;
    }

    setState(() {
      // Notify the framework that the state has changed
    });
  }

  void goToNextQuestion() {
    // method to go to the next question
    if (questionIndex < questions.length - 1) {
      questionIndex++;
      selectedCurrentAnswerIndex = null;
    }


    setState(() {
      // Notify the framework that the state has changed
    });

  }

  @override
  Widget build(BuildContext context) {
    final question = questions[questionIndex];
    bool isLastQ = questionIndex ==
        questions.length - 1; // to check if the Question is the last one or not
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              question.question,
              style: GoogleFonts.titilliumWeb(textStyle:TextStyle(fontSize: 21) ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true, // because this listView is inside a column
                itemCount: question.options.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: selectedCurrentAnswerIndex ==
                            null // (meaning if the user hasn't selected an answer yet)
                        ? () => pickAnswer(index)
                        : null, // (indicating that the user has already selected an answer), the expression evaluates to null to disable the button
                    child: AnswerCard(
                      currentIndex: index,
                      option: question.options[index],
                      isSelected: selectedCurrentAnswerIndex == index,
                      selectedAnswerIndex: selectedCurrentAnswerIndex,
                      correctAnswerIndex: question.answerIndex,
                    ),
                  );
                },
              ),
            ),
            
            if (isLastQ)
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  // if it the last question navigate to the result screen
                  style: const ButtonStyle(
                    overlayColor: WidgetStatePropertyAll(Color.fromRGBO(30, 156, 210, 0.988)),
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(54, 174, 226, 0.992)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => ResultScreen(
                          score: score,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Finish",
                    style: GoogleFonts.titilliumWeb(textStyle: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w600) ),
                  ),
                ),
              )
            else
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    overlayColor: WidgetStatePropertyAll(Color.fromRGBO(30, 156, 210, 0.988)),
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(54, 174, 226, 0.992)),
                  ),
                  onPressed: selectedCurrentAnswerIndex != null
                      ? goToNextQuestion
                      : null,
                  child: Text(
                    "Next",
                    style: GoogleFonts.titilliumWeb(textStyle: TextStyle(color: Colors.white, fontSize: 19 , fontWeight: FontWeight.w600) ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
