import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lab2/screens/RegistorPage.dart';
import 'package:lab2/screens/loginPage.dart';
import 'package:lab2/screens/secondPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget buttonRegis() {
    
    return Container(
      
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(Icons.account_circle, color: Colors.blue[300]),
        color: Colors.purple[300],
        label: Text('Login'),
        onPressed: () {
          var rount = MaterialPageRoute(
              builder: (BuildContext context) => loginPage(
                valueFromloginPage: textEditController.text,valueFromloginPage1: textEditController1.text,
              ));
          Navigator.of(context).push(rount);
        },
      ),
    );
  }

  Widget button() {
    return Container(
      width: 250.0,
      child: RaisedButton.icon(
        icon: Icon(Icons.border_color, color: Colors.blue[300]),
        color: Colors.purple[300],
        label: Text('Registor'),
        onPressed: () {
          var rount = MaterialPageRoute(
              builder: (BuildContext context) => RegistorPage());
          Navigator.of(context).push(rount);
        },
      ),
    );
  }

var textEditController = new TextEditingController();
  Widget emailText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        controller: textEditController,
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

var textEditController1 = new TextEditingController();
  Widget passwordText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        controller: textEditController1,
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
      'paweena',
      style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.green[600],
          fontStyle: FontStyle.italic),
    );
  }

  Widget showAge() {
    return Text(
      'Robot Lawn Mower',
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
                image: AssetImage('images/background.png'), fit: BoxFit.cover),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                showlogo(),
                showName(),
                showAge(),
                //showAdddress(),
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
