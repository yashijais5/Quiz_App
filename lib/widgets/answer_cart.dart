import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions.dart';

class AnswerCard extends StatelessWidget{
  const AnswerCard({
    super.key,
    required this.question,
    required this.isSelected,
    required this.currentIndex,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
  });

  final String question;
  final bool isSelected;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int currentIndex;

  @override
  Widget build(BuildContext context){
    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer =!isCorrectAnswer && isSelected;
    return Padding (
      padding: const EdgeInsets.symmetric(vertical: 10,
    ),
    child: selectedAnswerIndex != null?
    Container(
      height: 70,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          width: 2,
          color: isCorrectAnswer
          ? Colors.green
          : isWrongAnswer
          ? Colors.red
          :Colors.white,
        ),
      ),
      child:  Row(children: [
        Expanded(
          child: Text(question,
        style:TextStyle(fontSize: 16,color: Colors.white),),
        ),
        SizedBox(height: 10,),
        isCorrectAnswer
        ? buildCorrectIcon()
        :isWrongAnswer
        ? buildWrongIcon()
        :const SizedBox.shrink(),
      ],
      ),
    )
    :Container(
      height: 70,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
       width: 2,
          color: Colors.white,
        ),
      ),
      child: Row(children: [
        Expanded(
          child: Text(
            question,
        style:TextStyle(fontSize: 16,color: Colors.white),
        ),
        ),
      ],
      ) ,
    ),
    );
  }
}

Widget buildCorrectIcon() => const CircleAvatar(
  radius: 15,
  backgroundColor: Colors.green,
  child: Icon(
    Icons.check,
    color: Colors.white,
  ),
);

Widget buildWrongIcon() => const CircleAvatar(
  radius: 15,
  backgroundColor: Colors.red,
  child: Icon(
    Icons.close,
    color: Colors.white,
  ),
) ;

