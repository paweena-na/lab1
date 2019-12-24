import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget buttonRegis() {
    return RaisedButton.icon(
      icon: Icon(Icons.account_circle,
      color: Colors.blue[300]),
      color: Colors.purple[300],
      label: Text('Login'),
      onPressed: () {},);
  }
  Widget button() {
    return RaisedButton.icon(
      icon: Icon(Icons.account_circle,
      color: Colors.blue[300]),
      color: Colors.purple[300],
      label: Text('Registor'),
      onPressed: () {},);
  }

  Widget emailText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.email,
              size: 36.0,
              color: Colors.purple[700],
            ),
            labelText: 'Username',
            hintText: 'your@email.com'),
      ),
    );
  }

  Widget passwordText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
            icon: Icon(
              Icons.keyboard_arrow_down,
              size: 36.0,
              color: Colors.purple[700],
            ),
            labelText: 'Password',
            hintText: 'More 6 charactor'),
      ),
    );
  }

  Widget showlogo() {
    return Image.asset('images/logoo.png');
  }

  Widget showName() {
    return Text(
      'Robot Lawn Mower',
      style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.green[600],
          fontStyle: FontStyle.italic),
    );
  }

  Widget showAge() {
    return Text(
      '21',
      style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.red[600],
          fontStyle: FontStyle.italic),
    );
  }

  Widget showAdddress() {
    return Text(
      'RUTS',
      style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue[600],
          fontStyle: FontStyle.italic),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[200],
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                showlogo(),
                showName(),
                /*showAge(),
            showAdddress(),*/
                emailText(),
                passwordText(),
                buttonRegis(),
                button(),
              ],
            ),
          ),
        )));
  }
}
