import 'package:flutter/material.dart';
import 'package:quiz/models/images.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final onClearState;

  const Result(
      {Key? key,
      required this.count,
      required this.total,
      required this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;
    if (0 <= count && count <= 4) {
      msg = 'Bad';
      img = Image.asset(AppAssets.loser);
    } else if (5 <= count && count <= 8) {
      msg = 'So so';
      img = Image.asset(AppAssets.normal);
    } else {
      msg = 'Great!!!';
      img = Image.asset(AppAssets.winner);
    }

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            spreadRadius: 0,
            offset: Offset(2, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: <Color>[
            Color(0xFF5337ff),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          Text('Correct answer is $count of $total'),
          const Divider(color: Colors.white),
          TextButton(
            onPressed: onClearState,
            child: const Text(
              'Again',
              style: TextStyle(fontSize: 22, color: Colors.pink),
            ),
          ),
        ],
      ),
    );
  }
}
