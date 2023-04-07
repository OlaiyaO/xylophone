import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildFunction({int x, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(x);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildFunction(x: 1, color: Colors.red),
              buildFunction(x: 2, color: Colors.orange),
              buildFunction(x: 3, color: Colors.yellow),
              buildFunction(x: 4, color: Colors.green),
              buildFunction(x: 5, color: Colors.blue),
              buildFunction(x: 6, color: Colors.indigo),
              buildFunction(x: 7, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }

