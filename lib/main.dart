import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

// Center(
// child: Text(
// nouns.first
// ),
// ),
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void sound(int noteNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNum.wav'));
  }

  // Color color = Colors.red,
  Expanded playSound(int noteNumber , Color? color) {
    return Expanded(
      child: TextButton(
        // style: ButtonStyle(
        //   backgroundColor: Colors.red ),
        // // MaterialStateProperty.all(Colors.color
        // ),
        onPressed: () {
          sound(noteNumber);
        },
        child: Container(
          color: color,
        ),
        // const Text(' ')
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // playSound(color: Colors.red , noteNumber : 1),
              // playSound(color : Colors.pink, noteNumber: 2),
              // playSound(color : Colors.brown, noteNumber: 3,
              // playSound(color : Colors.yellow, noteNumber: 4),
              // playSound(color : Colors.orange, noteNumber: 5),
              // playSound(color : Colors.purple, noteNumber: 6),
              // playSound(color : Colors.lightGreen, noteNumber: 7),
              playSound(1,Colors.red),
              playSound(2,Colors.pink),
              playSound(3,Colors.purple),
              playSound(4, Colors.cyan),
              playSound(5, Colors.teal),
              playSound(6, Colors.green),
              playSound(7, Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
