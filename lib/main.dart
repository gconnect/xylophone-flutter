import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playAudio(int audioNumber) {
    final player = AudioCache();
    player.play("note$audioNumber.wav");
  }

  Expanded buildKey(Color color, int soundNumber, String text) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playAudio(soundNumber);
        },
        color: color,
        child: Text(text),
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
              buildKey(Colors.red, 1, "Sound1"),
              buildKey(Colors.green, 2, "Sound2"),
              buildKey(Colors.brown, 3, "Sound3"),
              buildKey(Colors.blue, 4, "Sound4"),
              buildKey(Colors.orange, 5, "Sound5"),
              buildKey(Colors.greenAccent, 6, "Sound6"),
              buildKey(Colors.yellow, 7, "Sound7"),
            ],
          ),
        ),
      ),
    );
  }
}
