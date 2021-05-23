import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  FlutterTts _flutterTts = FlutterTts();

  Widget build(BuildContext context) {
    Future _speak() async {
      await _flutterTts.speak(
          'According to a Centers for Disease Control (CDC) study of mental health in older adults aged 55+, '
          'it is estimated that 20% of seniors experience some type of mental health concern. '
          'The most common conditions include anxiety, severe cognitive impairment and mood disorders, such as depression or bipolar depression.\n\n\n'
          ' Ways to improve mental health\n\n'
          '1. Doing Physical Activities, exercise, yoga can benifit both mind and the body by boosting confidence and reducing the risk of fall.\n\n'
          '2. Stay Connected with Friends. For older adults, keeping in touch with the important people in their lives can help to stave off loneliness and feelings of isolation that can lead to depression, as well as mental and physical decline.\n\n'
          '3. Volunteering. For someone looking to donate their time after retirement, volunteering can offer a number of additional benefits that enhance seniors’ physical, emotional and mental health. Volunteering in retirement can help seniors remain active, socially engaged, and become part of a vibrant and diverse community. ');
      await _flutterTts.setSpeechRate(1);
    }

    Future _stop() async {
      await _flutterTts.stop();
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Text(
              'According to a Centers for Disease Control (CDC) study of mental health in older adults aged 55+, '
              'it is estimated that 20% of seniors experience some type of mental health concern. '
              'The most common conditions include anxiety, severe cognitive impairment and mood disorders, such as depression or bipolar depression.\n\n\n'
              ' Ways to improve mental health\n\n'
              '1. Doing Physical Activities, exercise, yoga can benifit both mind and the body by boosting confidence and reducing the risk of fall.\n\n'
              '2. Stay Connected with Friends. For older adults, keeping in touch with the important people in their lives can help to stave off loneliness and feelings of isolation that can lead to depression, as well as mental and physical decline.\n\n'
              '3. Volunteering. For someone looking to donate their time after retirement, volunteering can offer a number of additional benefits that enhance seniors’ physical, emotional and mental health. Volunteering in retirement can help seniors remain active, socially engaged, and become part of a vibrant and diverse community. ',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Statistics about Mental Health'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _speak(),
        tooltip: 'Increment',
        child: Icon(Icons.volume_up),
      ),
    );
  }
}
