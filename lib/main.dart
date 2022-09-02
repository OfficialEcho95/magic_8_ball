import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
   MaterialApp(home: Scaffold(backgroundColor: Colors.blue,
  appBar: AppBar(title: const Text('Ask me Anything', style: TextStyle(color: Colors.black),), backgroundColor: Colors.blue[900],),
  body: const MagicBalls(),), ),
  );
}

class MagicBalls extends StatefulWidget {
  const MagicBalls({Key? key}) : super(key: key);
  @override
  State<MagicBalls> createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBalls> {

  var ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(child: TextButton(onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
        });
      },
      child: Image.asset('images/ball$ballNumber.png',),),),
    );
  }
}
