import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if(questionIndex == 0){
      questionIndex = questionIndex + 1;
      }else{
        questionIndex = questionIndex - 1;
      }
    });
    
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 32.0),
          child: Column(
            children: <Widget>[
              Text(questions[questionIndex]),
              RaisedButton(
                child: Text("Answer 1"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("Answer 2"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("Answer 3"),
                onPressed: answerQuestion,
              ),
            ],
          ),
        ),
      ),
    ); //video == 11
  }
}
