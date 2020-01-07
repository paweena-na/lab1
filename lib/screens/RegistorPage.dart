import 'package:flutter/material.dart';
import 'package:lab2/screens/thirdPage.dart';

class RegistorPage extends StatefulWidget {
  @override
  _RegistorPageState createState() => _RegistorPageState();
}

class _RegistorPageState extends State<RegistorPage> {
  final String titleString = "RegistorPage";
  var textEditController = new TextEditingController();
  var textEditController1 = new TextEditingController();
  var textEditController2 = new TextEditingController();
  var textEditController3 = new TextEditingController();
  var textEditController4 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget widget = new ListView(
      children: <Widget>[
        ListTile(
          title: TextField(
            controller: textEditController,
            decoration: InputDecoration(
            labelText: 'Name'
          ),
        ),
        ),
        ListTile(
          title: TextField(
            controller: textEditController1,
            decoration: InputDecoration(
            labelText: 'Last Name'
          ),
          ),
        ),
        ListTile(
          title: TextField(
            controller: textEditController2,
            decoration: InputDecoration(
            labelText: 'Age'
          ),
          ),
        ),
        ListTile(
          title: TextField(
            controller: textEditController3,
            decoration: InputDecoration(
            labelText: 'Address'
          ),
          ),
        ),
        ListTile(
          title: TextField(
            controller: textEditController4,
            decoration: InputDecoration(
            labelText: 'Class'
          ),
          ),
        ),
        ListTile(
          title: RaisedButton(
            child: Text('Next to Thirs Page'),
            onPressed: () {
              var rount = MaterialPageRoute(
                  builder: (BuildContext context) => ThirdPage(
                        valueFromRegistorPage: textEditController.text,
                        valueFromRegistorPage1: textEditController1.text,
                        valueFromRegistorPage2: textEditController2.text,
                        valueFromRegistorPage3: textEditController3.text,
                        valueFromRegistorPage4: textEditController4.text,
                      ));
              Navigator.of(context).push(rount);
            },
          ),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: widget,
      /*body: Container(
        child: Center(
          child: Image.asset('images/background.png'),
        ),
      ),*/
    );
  }
}
