import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final dynamic playlist = [
    "note1.wav",
    "note2.wav",
    "note3.wav",
    "note4.wav",
    "note5.wav",
    "note6.wav",
    "note7.wav"
  ];
  final player = AudioCache();

  Expanded buildKey({int note, Color colors}){
    return Expanded(
      child: FlatButton(
        child: null,
        onPressed: () {
          playXyloNote(note);
        },
        color: colors,
      ),
    );
  }


  void playXyloNote(int i) {

    player.play(playlist[i - 1]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              children: <Widget>[
                buildKey(note: 1, colors: Colors.red),
                buildKey(note: 2, colors: Colors.orange.shade900),
                buildKey(note: 3, colors: Colors.orange),
                buildKey(note: 4, colors: Colors.yellow),
                buildKey(note: 5, colors: Colors.green.shade700),
                buildKey(note: 6, colors: Colors.blue.shade800),
                buildKey(note: 7, colors: Colors.deepPurple),

          ],
          crossAxisAlignment: CrossAxisAlignment.stretch,
        )),
      ),
    );
  }
}
