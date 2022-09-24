import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(useMaterial3: true),
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyHomePage(title: 'Kaferas To Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _totalScore = 0;
  final _questions = const [
    {
      'questionLabel': 'What is Localhost IP Adress: ?',
      'answers': [
        {'text': '192.168.134.3', 'score': 3},
        {'text': '124.6.4.56', 'score': 4},
        {'text': '127.0.0.1', 'score': 10}
      ]
    },
    {
      'questionLabel': 'What make you happy: ?',
      'answers': [
        {'text': 'Eating', 'score': 3},
        {'text': 'Singing', 'score': 3},
        {'text': 'Learning', 'score': 10}
      ]
    },
    {
      'questionLabel': 'Is Today Is Saturday: ?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'Non', 'score': 3},
        {'text': 'Maybe', 'score': 3}
      ]
    },
    {
      'questionLabel': 'Is it Dammy to Look: ?',
      'answers': [
        {'text': 'Anyhow', 'score': 3},
        {'text': 'Perhaps', 'score': 3},
        {'text': 'I think', 'score': 10}
      ]
    },
    {
      'questionLabel': 'Can I have your Help: ?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 3},
        {'text': 'If you want', 'score': 3}
      ]
    },
    {
      'questionLabel': 'Still She Single: ?',
      'answers': [
        {'text': 'Yes', 'score': 3},
        {'text': 'Non', 'score': 3},
        {'text': 'Widowed', 'score': 10}
      ]
    },
  ];

  void _resetGame(){
    print("Reset Called");
    setState((){
      _totalScore=0;
      _counter=0;
    });
  }
  void _youPress(int score) {
    _totalScore+=score;
    if (_counter < _questions.length) {
      setState(() {
        _counter++;
        print("It has been pressed");
        print(_counter);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              style: TextStyle(
                  color: Color.fromARGB(255, 246, 248, 253),
                  fontWeight: FontWeight.bold),
              "GUESS RESPONSE"),
          centerTitle: true),
      body: (_counter < _questions.length)
          ? Quiz(
              answerQuestion: _youPress,
              questionIndex: _counter,
              questions: _questions,
            )
          : Result(_totalScore,_resetGame),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
