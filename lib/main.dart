//TODO: base scaffold
import 'chess_board.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const GuessTheColor());
}

class GuessTheColor extends StatelessWidget {
  const GuessTheColor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.amber.shade300,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    ));
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Center(
          child: Text(
            '$randomSquare',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.amber.shade900,
            ),
          ),
        )),
        Expanded(
          child: TextButton(
            
            onPressed: () {},
            child: Text(
              'White',
              style:
               TextStyle(
                fontSize: 20.0,
                color: Colors.purple,
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Black',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal,
              ),
            ),
          ),
        )
      ],
    );
  }
}
