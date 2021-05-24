import 'package:flutter/material.dart';
import 'package:spreadtheknit/Maps.dart';

class LocateCharities extends StatefulWidget {
  @override
  _LocateCharitiesState createState() => _LocateCharitiesState();
}

class _LocateCharitiesState extends State<LocateCharities> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: ListView(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(5.0),
              child: Card(
                child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset(
                          'images/make-a-wish-map.png',
                          height: 180,
                          width: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Make A Wish Canada',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: SizedBox(
                          child: Text(
                            'Address: 4211 Yonge St #520, North York, ON M2P 2A9\n'
                            'Phone Number: (416) 224-9474',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Container(
              margin: EdgeInsets.all(5.0),
              child: Card(
                child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset(
                          'images/orphanage-map.png',
                          height: 180,
                          width: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Abosamso Orphanage And Charity International',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: SizedBox(
                          child: Text(
                            'Address: 415 Oakdale Rd Suite 383, North York, ON M3N 1W7\n'
                            'Phone Number: (416) 768-1015',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Container(
              margin: EdgeInsets.all(5.0),
              child: Card(
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset(
                          'images/mcdonald-house-map.png',
                          height: 180,
                          width: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Ronald McDonald House Charities',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: SizedBox(
                          child: Text(
                            'Address: 240 McCaul St, Toronto, ON M5T 1W5\n'
                            'Phone Number: (416) 977-0458',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Container(
              margin: EdgeInsets.all(5.0),
              child: Card(
                child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset(
                          'images/save-the-children-canada-map.png',
                          height: 180,
                          width: 70,
                          fit: BoxFit.fill,
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Save The Children Canada',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: SizedBox(
                          child: Text(
                            'Address: 4141 Yonge St #300, North York, ON M2P 2A8\n'
                            'Phone Number: (800) 668-5036',
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
      appBar: AppBar(
        title: Text('Charities Locations'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Maps()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.map),
      ),
    );
  }
}
