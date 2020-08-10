import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: camel_case_types
class video extends StatelessWidget {
  Widget build(BuildContext context) {
    
    mytoast() {
    Fluttertoast.showToast(
        msg: "Playing video!!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 18.0);
  }
    
    var myLeadingIcon = Icon(
      Icons.playlist_play,
      color: Colors.white,
    );

    var myLeadingButton = IconButton(
      icon: myLeadingIcon, 
      onPressed:  () {
    Navigator.pop(context);
  }
  );

    var dotIcon = Icon(
      Icons.more_vert,
      color: Colors.white,
    );

    var dotIconButton = IconButton(icon: dotIcon, onPressed: mytoast());

    FlutterStatusbarcolor.setStatusBarColor(Colors.limeAccent);

    var myAppBar = AppBar(
      backgroundColor: Colors.blueGrey,
      title: Text('My Videos !!'),
      leading: myLeadingButton,
      actions: <Widget>[
        dotIconButton,
      ]
    );


    var videoPlayerController = VideoPlayerController.network('https://github.com/Tabrej123/audio_vedio/raw/master/Ye_dua_hai_meri_rab_se_WhatsApp_status_video(360p).mp4');

    var videoVideo = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: false,
      autoInitialize: true,
      looping: false,
    );

   

    

    var videoPlayerController3 = VideoPlayerController.network(
        'https://github.com/Tabrej123/audio_vedio/raw/master/Ignite%2C_Alan_Walker_song._WhatsApp_status(360p).mp4');

    var videoVideo3 = ChewieController(
      videoPlayerController: videoPlayerController3,
      aspectRatio: 4 / 2,
      autoPlay: false,
      autoInitialize: true,
      looping: false,
    );  

    var myVideoBody = Container(
     width: double.infinity,
     height: double.infinity,
      decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://github.com/Tabrej123/audio_vedio/raw/master/tabrej.jpg'),
              fit: BoxFit.cover,
            ),
          ),
     child: Column(
      children: <Widget>[
Container(
            margin: EdgeInsets.all(8),
            height: 180,
          alignment: Alignment.bottomCenter,
            child: Chewie(
          controller: videoVideo,
        )),
        
        
        Container(
            margin: EdgeInsets.all(8),
            height: 180,
          alignment: Alignment.bottomCenter,
            child: Chewie(
          controller: videoVideo3,
        )),   
         
      ],
     )
    );


    var home = Scaffold(
      appBar: myAppBar,
      body: myVideoBody,
    );

    var videoPage = MaterialApp(
      home: home,
      debugShowCheckedModeBanner: false,
    );
    return videoPage;
  }
}
// TODO Implement this library.