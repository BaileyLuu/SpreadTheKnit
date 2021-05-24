import 'package:flutter/material.dart';
import 'package:spreadtheknit/Camera.dart';
import 'package:spreadtheknit/History.dart';
import 'package:spreadtheknit/KnittingStyles.dart';
import 'package:spreadtheknit/LocateCharities.dart';
import 'package:spreadtheknit/Maps.dart';
import 'package:spreadtheknit/MentalHealth.dart';
import 'package:spreadtheknit/Photos.dart';
//import 'package:flutter_tts/flutter_tts.dart';

//the main function is the start of the Flutter apps
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatelessWidget {
  //final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    // _speak() async {
    //   await flutterTts.setLanguage('en-US');
    //   await flutterTts.setPitch(1);
    //   await flutterTts.speak('Knitting Styles');
    // }

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Stack(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.count(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  primary: false,
                  crossAxisCount: 2,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KnittingStyles()));
                      },
                      color: Colors.white,
                      elevation: 7,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/knitting-styles.png',
                            height: 150,
                          ),
                          Text(
                            'Knitting Styles',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                          // RaisedButton(
                          //   child: Text('Press to Speak'),
                          //   onPressed: () => _speak(),
                          // ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                //  builder: (context) => LocateCharities()));
                                builder: (context) => LocateCharities()));
                      },
                      color: Colors.white,
                      elevation: 7,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/maps-icons.png',
                            height: 155,
                          ),
                          Text(
                            'Charities Locations',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => History()));
                      },
                      color: Colors.white,
                      elevation: 7,
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            'https://thumbs.dreamstime.com/b/search-loupe-zoom-icon-element-history-color-mobile-concept-web-apps-can-be-used-white-background-137789041.jpg',
                            height: 150,
                          ),
                          Text(
                            'History',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Camera()));
                      },
                      color: Colors.white,
                      elevation: 7,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/camera.png',
                            height: 150,
                          ),
                          Text(
                            'Camera',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Photo()));
                      },
                      color: Colors.white,
                      elevation: 7,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/photos-icon.png',
                            height: 140,
                          ),
                          Text(
                            'Photos',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MentalHealth()));
                      },
                      color: Colors.white,
                      elevation: 7,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'images/mental-health.png',
                            height: 140,
                          ),
                          Text(
                            'Mental Health',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Spread The Knit"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
