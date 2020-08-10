import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:chewie_audio/chewie_audio.dart';
import 'package:video_player/video_player.dart';
import 'package:fluttertoast/fluttertoast.dart';


// ignore: camel_case_types
class audio extends StatelessWidget {
  Widget build(BuildContext context) {
 mytoast() {
    Fluttertoast.showToast(
        msg: " MUSIC MUSIC !!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blueAccent,
        textColor: Colors.white,
        fontSize: 20.0);
  }
    

// ignore: unused_local_variable
var myLeadingIconAudio = Icon(
      Icons.apps,
       color: Colors.amber,
    );

    // ignore: unused_local_variable
    var myLeadingButtonAudio =
        IconButton(icon: myLeadingIconAudio, onPressed:  () {
    Navigator.pop(context);
  });

    var dotIconAudio = Icon(
      Icons.play_arrow,
      color: Colors.white,
    );

    var dotIconButtonAudio = IconButton(icon: dotIconAudio, onPressed: mytoast);

    FlutterStatusbarcolor.setStatusBarColor(Colors.purpleAccent);

    var myAppBarMusic = AppBar(
      backgroundColor: Colors.black87,
      title: Text('MUSIC LOVER !!'),
      leading: myLeadingButtonAudio,
      actions: <Widget>[
        dotIconButtonAudio,
      ],
    );

    var videoPlayerController = VideoPlayerController.network('https://github.com/Tabrej123/audio_vedio/raw/master/Alan_Walker_%E2%80%93_On_My_Way_(RINGTONE)__Bestringtone.net(256k).mp3');

    var audio = ChewieAudioController(
      videoPlayerController: videoPlayerController,
      autoPlay: false,
      looping: false,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.greenAccent,
        handleColor: Colors.red,
        backgroundColor: Colors.amberAccent,
        bufferedColor: Colors.redAccent,
      ),
      autoInitialize: true,
    );

    

var videoPlayerController3 = VideoPlayerController.network('https://github.com/Tabrej123/audio_vedio/raw/master/Criminal_-_Ringtone__Villain_beats__(Download_link%EF%BF%BD)(2%EF%BF%BD56k).mp3');

    var audio1 = ChewieAudioController(
      videoPlayerController: videoPlayerController3,
      autoPlay: false,
      looping: false,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.red,
        backgroundColor: Colors.lightGreenAccent,
        bufferedColor: Colors.lightGreen,
      ),
      autoInitialize: true,
    );
    var myAudioBody = Container(
        width: double.infinity,
        height: double.infinity,
         decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://github.com/Tabrej123/audio_vedio/raw/master/mytab.jpg'),
                  
              fit: BoxFit.cover,
            ),
          ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              height: 50,
              child: ChewieAudio(
                controller: audio,
              ),
            ),
             
            Container(
              margin: EdgeInsets.all(10),
              height: 50,
              child: ChewieAudio(
                controller: audio1,
              ),
            ),
          ],
        ));

    var home = Scaffold(
      appBar: myAppBarMusic,
      body: myAudioBody,
    );

    var musicPage = MaterialApp(
      home: home,
      debugShowCheckedModeBanner: false,
    );
    return musicPage;
  }
}
