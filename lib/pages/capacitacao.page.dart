import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CapacitacaoGeral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: SizedBox(
            width: 100,
            height: 70,
            child: Image.asset("assets/logo.png"),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
          ),
        ],
      ),
      body: Container(
          alignment: Alignment(0.0, 1.15),
          child: ListView(
            children: <Widget>[
              cardItem('Z9UjO5Ng63M'),
              cardItem('A0J5LpjuQA0'),
            ],
          )),
    );
  }
}

Widget cardItem(String videoCode) {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          title: Text("Video teste",
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              textAlign: TextAlign.center),
          trailing: Icon(Icons.more_vert),
        ),
        Container(child: VideoPlayer(videoCode)),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. "),
        ),
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.favorite, color: Colors.deepPurple),
                onPressed: () {},
              ),
              FlatButton(
                child: Icon(Icons.share, color: Colors.deepPurple),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class VideoPlayer extends StatelessWidget {
  String videoCode = "";
  VideoPlayer(this.videoCode);
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoCode,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
      ),
    );
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
        ),
        builder: (context, player) {
          return Column(
            children: [
              // some widgets
              player,
              //some other widgets
            ],
          );
        });
  }
}
