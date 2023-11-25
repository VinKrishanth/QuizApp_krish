import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 25, right: 10),
      padding: EdgeInsets.only(left: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(fontSize: 18),
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        onPressed: () => selectHandler(),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(answerText),
        ),
      ),
    );
  }
}
