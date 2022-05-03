import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Whats your favorite color?',
      'Whats your favorite Animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: Column(
            children: [
              Text(questions[questionIndex]),
              RaisedButton(
                  child: const Text('Answer 1'),
                  onPressed: answerQuestion,
                  color: Colors.cyan,
                  textColor: Colors.red),
              RaisedButton(
                child: const Text('Answer 2'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: const Text('Answer 3'),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: const Text('Answer 4'),
                onPressed: answerQuestion,
              )
            ],
          )),
    );
  }
}
