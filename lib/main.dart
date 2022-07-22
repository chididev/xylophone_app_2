import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  //The buttonBuilder function builds the play buttons and takes in the noteNumber
  //and button color as variables.
  Expanded buttonBuilder({
    required int noteNumber, required Color buttonColor
  }) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black,
          backgroundColor: buttonColor,
        ),
        onPressed: () {
          AssetsAudioPlayer.newPlayer().open(
            Audio('audio/note$noteNumber.wav'),
          );
        },
        child: const Text(''),
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
            children: [
              //The buttonBuilder function is called inputting the
              //noteNumber variable and buttonColor variable.
              buttonBuilder(noteNumber: 1, buttonColor: Colors.red),
              buttonBuilder(noteNumber: 2, buttonColor: Colors.orange),
              buttonBuilder(noteNumber: 3, buttonColor: Colors.yellow),
              buttonBuilder(noteNumber: 4, buttonColor: Colors.green),
              buttonBuilder(noteNumber: 5, buttonColor: Colors.blue),
              buttonBuilder(noteNumber: 6, buttonColor: Colors.indigo),
              buttonBuilder(noteNumber: 7, buttonColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
