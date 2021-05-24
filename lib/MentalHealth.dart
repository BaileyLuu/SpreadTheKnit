import 'package:flutter/material.dart';
import 'package:spreadtheknit/PhysicalActivities.dart';
import 'package:spreadtheknit/Statistics.dart';

class MentalHealth extends StatefulWidget {
  @override
  _MentalHealthState createState() => _MentalHealthState();
}

class _MentalHealthState extends State<MentalHealth> {
  Widget build(BuildContext context) {
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
                                builder: (context) => PhysicalActivities()));
                      },
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            'https://cdn2.iconfinder.com/data/icons/pictograms-5-1/50/416-512.png',
                            height: 150,
                          ),
                          Text(
                            'Activities',
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
                                builder: (context) => Statistics()));
                      },
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Image.network(
                            'https://pics.freeicons.io/uploads/icons/png/9454990961554897564-512.png',
                            height: 140,
                          ),
                          Text(
                            'Statistics',
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
        title: Text('Mental Health'),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
