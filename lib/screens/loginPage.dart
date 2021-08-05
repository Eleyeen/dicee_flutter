import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Colors.red[700],
        ),

        body: SafeArea(

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[

                SizedBox(
                  height: 30.0,
                ),
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('images/ea.jpg'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Eleyeen Awan',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),

                Card(
                  color:  Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 28.0),
                  child: ListTile(
                    leading: Icon(
                        Icons.email,
                        color: Colors.black
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a Email'
                      ),
                    ),
                  ),
                ),

                Card(
                  margin: EdgeInsets.symmetric(vertical: 0.0,horizontal: 28.0),
                  child: ListTile(
                    leading:
                    Icon(
                        Icons.lock,
                        color: Colors.black
                    ),
                    title: TextField(
                      obscureText: true,
                        obscuringCharacter: "*",
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a  Password',

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text("dice Screen",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontStyle: FontStyle.italic,

                      ),
                    ),
                    onPressed: () {}
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

