import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  final String valueFromRegistorPage,
      valueFromRegistorPage1,
      valueFromRegistorPage2,
      valueFromRegistorPage3,
      valueFromRegistorPage4;

  ThirdPage(
      {Key key,
      this.valueFromRegistorPage,
      this.valueFromRegistorPage1,
      this.valueFromRegistorPage2,
      this.valueFromRegistorPage3,
      this.valueFromRegistorPage4})
      : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final String titleString = 'ThirdPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: Text(
          "${widget.valueFromRegistorPage},\n${widget.valueFromRegistorPage1},\n${widget.valueFromRegistorPage2},\n${widget.valueFromRegistorPage3},\n${widget.valueFromRegistorPage4}"),
    );
  }
}
