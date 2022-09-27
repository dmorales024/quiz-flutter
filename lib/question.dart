import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  //tells dart that the questionText value will never change after the thing
  //cant assign a new avlue to questionText

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
        //.center is an enum: its a list of different values that are 0, 1, 2 to computer
        //but we understand it as a label to edit everything else
      ),
    );
  }
}
