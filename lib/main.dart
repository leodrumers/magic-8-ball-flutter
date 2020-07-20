import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.blue, 1),
              buildKey(Colors.yellow, 2),
              buildKey(Colors.green, 3),
              buildKey(Colors.red, 4),
              buildKey(Colors.redAccent, 5),
              buildKey(Colors.greenAccent, 6),
              buildKey(Colors.yellowAccent, 7),
              buildKey(Colors.blueAccent, 8),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKey(Color color, int keyNote) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(keyNote);
          }),
    );
  }
}
