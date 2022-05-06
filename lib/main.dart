import 'package:app/Components/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var questions = ['Qual a sua cor favorita?', 'Qual o seu animal favorito?'];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My first App')),
      body: Column(
        children: [
          Question(questions[_questionIndex]),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text("resposta 1"),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text("resposta 1"),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text("resposta 1"),
          )
        ],
      ),
    ));
  }
}
