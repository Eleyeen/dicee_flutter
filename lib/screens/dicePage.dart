import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;

  int rightDiceNum = 1;

  void diceChange() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.redAccent,
          appBar: AppBar(
            title: Text('Dice Game'),
            backgroundColor: Colors.red,
          ),
           drawer : Drawer(
             child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text('Dice Header',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20.0,
                          letterSpacing: 2.0,
                          color: Colors.white

                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text('Item 1'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: Text('Item 2'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: Text('Item 3'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: Text('Item 4'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                ],
              ),
            ),
          body: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        diceChange();
                      },
                      child: Image.asset('images/dice$leftDiceNum.png')),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        diceChange();
                      },
                      child: Image.asset('images/dice$rightDiceNum.png')),
                ),
              ],
            ),
          ),

        ),
    );
  }
}
