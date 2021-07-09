import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(
              color: Colors.red,
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumber1 = 1;
  int diceNumber2 = 3;

  void changeNumber() {
    setState(() {
      diceNumber1 = Random().nextInt(6) + 1;
      diceNumber2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(
                    Theme.of(context).primaryColorLight,
                  ),
                  overlayColor: MaterialStateProperty.all(
                    Theme.of(context).primaryColorLight,
                  ),
                ),
                child: Image.asset(
                  'images/dice$diceNumber1.png',
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {
                  changeNumber();
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(
                    Theme.of(context).primaryColorLight,
                  ),
                  overlayColor: MaterialStateProperty.all(
                    Theme.of(context).primaryColorLight,
                  ),
                ),
                child: Image.asset(
                  'images/dice$diceNumber2.png',
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {
                  changeNumber();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
