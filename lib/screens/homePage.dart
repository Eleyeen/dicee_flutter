import 'package:dicee/screens/dicePage.dart';
import 'package:flutter/material.dart';

import 'loginPage.dart';
import 'signUp.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            child : TextButton(
                child: Text(
                  "SignUp",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                onPressed: () {
                  Navigator.push((context), MaterialPageRoute(builder: (context) => SignUp()));

                }),
          ),
          SizedBox(
            height: 10.0,
          ),
          Card(

          child: TextButton(
              child: Text(
                "login",
                style: TextStyle(
                  fontSize: 24.0,
                  fontStyle: FontStyle.italic,

                ),
              ),
              onPressed: () {
                _navigateToNextScreenLogin(context);
              }),
          ),
          Card(
            child: TextButton(
                child: Text(
                  "dice Screen",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                onPressed: () {
                  _navigateToNextScreendicee(context);
                }),
          ),

        ],
      ),
    );
  }

  void _navigateToNextScreenLogin(BuildContext context) {
    Navigator.push((context), MaterialPageRoute(builder: (context) => Login()));
  }


  void _navigateToNextScreendicee(BuildContext context) {
    Navigator.push(
        (context), MaterialPageRoute(builder: (context) => DicePage()));
  }
}