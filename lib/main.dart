import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade900,
          centerTitle: true,
          title: Text('Xylophone'),
        ),
        body: SafeArea(
            child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildNoteButton('note1.wav', Colors.blue, 'C'),
            buildNoteButton('note2.wav', Colors.green, 'D'),
            buildNoteButton('note3.wav', Colors.yellow, 'E'),
            buildNoteButton('note4.wav', Colors.orange, 'F'),
            buildNoteButton('note5.wav', Colors.red, 'G'),
            buildNoteButton('note6.wav', Colors.white, 'A'),
            buildNoteButton('note7.wav', Colors.purple, 'B'),
          ],
        )),
      ),
    );
  }

  Expanded buildNoteButton(
      String noteName, Color buttonColor, String buttonText) {
    return Expanded(
      child: FlatButton(
          onPressed: () => playNote(noteName),
          child: Text(buttonText),
          color: buttonColor),
    );
  }

  void playNote(String noteName) {
    return setState(() {
      var audioPlayer = AudioCache();
      audioPlayer.play(noteName);
    });
  }
}
