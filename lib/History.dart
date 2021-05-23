import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Text(
              'You have visited Knitting Styles tab and watch How to Knit Basic Mittens\n\n'
              'You have visited Charities Locations\n\n'
              'You have visited Photos\n\n'
              'You have visited Mental Health',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
