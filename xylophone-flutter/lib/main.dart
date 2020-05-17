import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());
final player = AudioCache();

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              getTile('note1', Colors.blue),
              getTile('note2', Colors.purple),
              getTile('note3', Colors.green),
              getTile('note4', Colors.yellow),
              getTile('note5', Colors.orange),
              getTile('note6', Colors.red),
              getTile('note7', Colors.teal),
            ],
          ),
        ),
      ),
    );
  }

  Expanded getTile(String wavName, Color color) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            player.play('$wavName.wav');
          },
          child: null,
        ),
      );
}
