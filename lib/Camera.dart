import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Positioned(
          child: Image.network(
            'https://news-cdn.softpedia.com/images/news2/Android-5-1-1-Update-Will-Bring-New-Camera-Options-to-Samsung-Galaxy-S6-and-Galaxy-S6-Edge-480221-2.jpg',
            alignment: Alignment.bottomCenter,
            width: 1980,
            height: 1000,
            fit: BoxFit.cover,
            //  alignment: Alignment.centerRight,
          ),
        ),
      ),
    );
  }
}
