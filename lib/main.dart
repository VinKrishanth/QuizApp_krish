import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

const String quizAppKrishImage = 'images/quiz_app_krish2.jpg';

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': '01. By which program python was interpreted?',
      'answers': [
        {'text': 'A. Python compiler', 'score': 0},
        {'text': 'B. Python Interpreter', 'score': 10},
        {'text': 'C. Python CLI', 'score': 0},
        {'text': 'D. None of these', 'score': 0},
      ],
    },
    {
      'questionText': '02. What is the purpose of the "this" keyword in Java?',
      'answers': [
        {'text': 'A. To create a new instance of a class', 'score': 0},
        {
          'text': 'B. To refer to the current instance of the class',
          'score': 10
        },
        {'text': 'C. To access static members of the class', 'score': 0},
        {'text': 'D. define constructors', 'score': 0},
      ],
    },
    {
      'questionText': '03. Full form of API?',
      'answers': [
        {'text': 'A. Android Platform Integration', 'score': 0},
        {'text': 'B. Application Public Interface', 'score': 0},
        {'text': 'C. Application Postman Interface', 'score': 0},
        {'text': 'D. Application Programming Interface', 'score': 10},
      ],
    },
    {
      'questionText': '04. Which command is used to create the new react app?',
      'answers': [
        {'text': 'A. npx create-react-app my-app', 'score': 10},
        {'text': 'B. npx create-react-app -g my-app', 'score': 0},
        {'text': 'C. npx create-new-react-app my-app', 'score': 0},
        {'text': 'D. None of these', 'score': 0},
      ],
    },
    {
      'questionText':
          '05. Which of the following is not a valid keyword in C++ language?',
      'answers': [
        {'text': 'A. while', 'score': 0},
        {'text': 'B. for', 'score': 0},
        {'text': 'C. switch', 'score': 0},
        {'text': 'D. do-while', 'score': 10},
      ],
    },
    {
      'questionText': '06. Which of these is not a type of love?',
      'answers': [
        {'text': 'A. Eros', 'score': 0},
        {'text': 'B. Friendly', 'score': 10},
        {'text': 'C. Philia', 'score': 0},
        {'text': 'D. Agape', 'score': 0},
      ],
    },
    {
      'questionText':
          '07. Application of machine learning methods to large databases is called',
      'answers': [
        {'text': 'A. Data mining', 'score': 10},
        {'text': 'B. Artificial intelligence', 'score': 0},
        {'text': 'C. Big data computing', 'score': 0},
        {'text': 'D. Internet of things', 'score': 0},
      ],
    },
    {
      'questionText':
          '08. If the given input array is sorted or nearly sorted, which of the following algorithm gives the best performance?',
      'answers': [
        {'text': 'A. Insertion sort', 'score': 10},
        {'text': 'B. Selection sort', 'score': 0},
        {'text': 'C. Quick sort', 'score': 0},
        {'text': 'D. Merge sort', 'score': 0},
      ],
    },
    {
      'questionText': '09. What is the pH value of the human body?',
      'answers': [
        {'text': 'A. 9.2 to 9.8', 'score': 0},
        {'text': 'B. 7.0 to 7.8', 'score': 10},
        {'text': 'C. 6.1 to 6.3', 'score': 0},
        {'text': 'D. 5.4 to 5.6', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    print('Final Score: $_totalScore');
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print(_totalScore);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('QuizApp_Krish'),
        ),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // Specify your border color
              width: 2.0, // Specify the border width
            ),
          ),
          child: Column(
            children: [
              _questionIndex < _questions.length
                  ? Quiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _questions,
                    )
                  : Score(_totalScore, _resetQuiz),
              Image.asset(
                quizAppKrishImage,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
