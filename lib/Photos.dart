import 'package:flutter/material.dart';

class Photo extends StatefulWidget {
  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Stack(
          children: <Widget>[
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                primary: false,
                crossAxisCount: 2,
                children: <Widget>[
                  Card(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'images/children-sweater.jpg',
                          height: 194,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'images/children-sweater2.jpg',
                          height: 194,
                          width: 200,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'images/children-sweater3.jpg',
                          height: 194,
                          width: 193,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'images/wool-hat.jpg',
                          height: 194,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 7,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'images/sock.jpg',
                          height: 194,
                          width: 193,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'images/mittens.jpg',
                          height: 194,
                          width: 193,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Photos'),
      ),
    );
  }
}
