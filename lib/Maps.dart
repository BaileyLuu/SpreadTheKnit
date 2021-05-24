import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:spreadtheknit/Clusterable.dart';

class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class MapMaker extends Clusterable {}

class _MapsState extends State<Maps> {
//   MapMaker({
//     @required this.id,
//     @required this.position,
//     @required this.icon,
//     isCluster = false,
//     clusterId,
//     pointsSize,
//     childMarkerId,
// })
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);
  final List<LatLng> markersLocations = [
    LatLng(43.74810198439851, -79.40690138668238),
  ];

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locate Charities'),
        backgroundColor: Colors.green[700],
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        onTap: (cordinate) {
          mapController.animateCamera(CameraUpdate.newLatLng(cordinate));
        },
        //  markers: Set.of(markers.values),
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
    );
  }
}
