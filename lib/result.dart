import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final int finalScore;
  final VoidCallback resetHandler;

  Score(this.finalScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (finalScore <= 30) {
      resultText = 'You are so bad!';
    } else if (finalScore <= 50) {
      resultText = 'Pretty likeable!';
    } else if (finalScore <= 70) {
      resultText = 'You are awesome and innocent! You are ... strange?!';
    } else {
      resultText = 'You are ... strange?!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Final Score: $finalScore',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextButton(
              child: Text(
                'Restart Quiz!',
              ),
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: resetHandler,
            ),
          ],
        ),
      ),
    );
  }
}
