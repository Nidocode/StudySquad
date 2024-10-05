import 'package:flutter/material.dart';

/*
  If (no options is chosen)
    all answer cards should have default style
    all buttons should be enabled
  else
    all button should be disabled
    if (correct option is chosen)
      answer should be highlighted as green
    else
      answer should be highlighted as red
      correct answer should be highlighted as green
*/

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.option,
    required this.isSelected, // if the option is selected
    required this.currentIndex,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
  });

  final String option;
  final bool isSelected;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int currentIndex;

// int? means: variable can either hold an integer value or be null

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer = !isCorrectAnswer && isSelected;
    return Padding(padding: EdgeInsets.symmetric(vertical: 10.0),
      child: selectedAnswerIndex != null 
      ? Container( //if one option is chosen
        height: 70,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isCorrectAnswer 
            ? Colors.green
            : isWrongAnswer
            ? Colors.red
            : Colors.blueGrey
          )
        ),
        child: Row(
          children: [
            Expanded(child: Text(option, style: TextStyle(fontSize: 15 ),)),
            SizedBox(height: 7,),
            isCorrectAnswer
              ? buildCorrectIcon()
              : isWrongAnswer 
                ? buildWrongIcon()
                : SizedBox.shrink(), // This creates an empty box that takes up no space in the layout
          ],
        ) ,
      )
      : Container(  // if no option is selected
        height: 70,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey
          )
        ),
        child: Row(
          children: [
            Expanded(child: Text(option, style: TextStyle(fontSize: 15 ),)),
          ],
        ) ,
    )
    );
  }
}


Widget buildCorrectIcon() => SizedBox(
  height: 20,
  width: 20,
  child: const CircleAvatar(
        radius: 15,
        backgroundColor: Colors.green,
        child: Icon(
          size: 10,
          Icons.check,
          color: Colors.white,
        ),
      ),
);

Widget buildWrongIcon() => SizedBox(
  height: 20,
  width: 20,
  child: const CircleAvatar(
        radius: 15,
        backgroundColor: Colors.red,
        child: Icon(
          size: 10,
          Icons.close,
          color: Colors.white,
        ),
      ),
);
