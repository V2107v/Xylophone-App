import 'package:flutter/material.dart';
//import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int num) {
    print(num);
  }

  Widget makeUi(int n, Color colors) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(n);
        },
        color: colors,
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
              makeUi(1, Colors.purple),
              makeUi(2, Colors.blue),
              makeUi(3, Colors.green),
              makeUi(4, Colors.lightGreen),
              makeUi(5, Colors.orange),
              makeUi(6, Colors.yellow),
              makeUi(7, Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
