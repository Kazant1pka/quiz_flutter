import 'package:flutter/material.dart';
import 'package:quiz/models/question.dart';
import 'package:quiz/widgets/progress_bar.dart';
import 'package:quiz/widgets/quiz.dart';
import 'package:quiz/widgets/result.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
        _questionIndex = 0;
        _countResult = 0;
        _icons = [];
      });

  void _onChangeAnswer(bool isCorrect) => setState(() {
        if (isCorrect) {
          _icons.add(const Icon(Icons.brightness_1, color: Color(0xFFbd27ff)));
          _countResult++;
        } else {
          _icons.add(const Icon(Icons.brightness_1,
              color: Color.fromARGB(255, 255, 0, 0)));
        }
        _questionIndex += 1;
      });

  final whiteTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 24,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: DefaultTextStyle.merge(
        style: whiteTextStyle,
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              color: Color(0xff2a375a),
              image: DecorationImage(
                image: AssetImage('assets/images/quiz.jpg'),
                fit: BoxFit.cover,
              )),
          child: Column(
            children: [
              ProgressBar(
                icons: _icons,
                count: _questionIndex,
                total: data.questions.length,
              ),
              _questionIndex < data.questions.length
                  ? Quiz(
                      index: _questionIndex,
                      questionData: data,
                      onChangeAnswer: _onChangeAnswer)
                  : Result(
                      count: _countResult,
                      total: data.questions.length,
                      onClearState: _clearState),
            ],
          ),
        ),
      ),
    ));
  }
}
