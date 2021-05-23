import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class PhysicalActivities extends StatefulWidget {
  @override
  _PhysicalActivitiesState createState() => _PhysicalActivitiesState();
}

class _PhysicalActivitiesState extends State<PhysicalActivities> {
  @override
  Widget build(BuildContext context) {
    // var Firestore;

    // YoutubePlayer(
    //   controller: YoutubePlayerController(
    //     initialVideoId: 'zn2GwbPG-tc', //Add videoID.
    //     flags: YoutubePlayerFlags(
    //       hideControls: false,
    //       controlsVisibleAtStart: true,
    //       autoPlay: false,
    //       mute: false,
    //     ),
    //   ),
    //   showVideoProgressIndicator: true,
    //   //  progressIndicatorColor: AppColors.primary,
    // );
    //
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: 'kFhG-ZzLNN4', //Add videoID.

                  flags: YoutubePlayerFlags(
                    hideControls: false,
                    controlsVisibleAtStart: true,
                    enableCaption: true,
                    autoPlay: false,
                    mute: false,
                  ),
                ),
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueGrey,
                //  liveUIColor: Colors.blue,
                progressColors: ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amberAccent,
                ),
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(isExpanded: true),
                  // TotalDuration(),
                ],
              ),
            ),
          ),
          //
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: '-Ts01MC2mIo', //Add videoID.

                  flags: YoutubePlayerFlags(
                    hideControls: false,
                    controlsVisibleAtStart: true,
                    enableCaption: true,
                    autoPlay: false,
                    mute: false,
                  ),
                ),
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueGrey,
                //  liveUIColor: Colors.blue,
                progressColors: ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amberAccent,
                ),
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(isExpanded: true),
                  // TotalDuration(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: 'HB21F-PqVW4', //Add videoID.

                  flags: YoutubePlayerFlags(
                    hideControls: false,
                    controlsVisibleAtStart: true,
                    enableCaption: true,
                    autoPlay: false,
                    mute: false,
                  ),
                ),
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueGrey,
                //  liveUIColor: Colors.blue,
                progressColors: ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amberAccent,
                ),
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(isExpanded: true),
                  // TotalDuration(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: 'NDLad2vOHkU', //Add videoID.

                  flags: YoutubePlayerFlags(
                    hideControls: false,
                    controlsVisibleAtStart: true,
                    enableCaption: true,
                    autoPlay: false,
                    mute: false,
                  ),
                ),
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueGrey,
                //  liveUIColor: Colors.blue,
                progressColors: ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amberAccent,
                ),
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(isExpanded: true),
                  // TotalDuration(),
                ],
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("Knitting Styles"),
        // foregroundColor: Colors.red,
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
