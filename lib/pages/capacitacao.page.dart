import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CapacitacaoGeral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              border: new Border.all(color: Colors.transparent, width: 2.0),
              borderRadius: new BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFF525aaff),
                  Color(0XFFFF66FF),
                ],
              )),
        ),
        title: Center(
          child: SizedBox(
            width: 100,
            height: 45,
            child: Image.asset("assets/estimulo_logo.png"),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
          ),
        ],
      ),
      body: Container(
          decoration: BoxDecoration(color: Colors.grey[300]),
          alignment: Alignment(0.0, 1.15),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              cardItem('Z9UjO5Ng63M'),
              SizedBox(
                height: 5,
              ),
              cardItem('A0J5LpjuQA0'),
            ],
          )),
    );
  }
}

Widget cardItem(String videoCode) {
  return Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          child: VideoPlayer(videoCode),
        ),
        Container(
          padding: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 20),
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
          return Stack(
            key: GlobalKey<FormState>(debugLabel: '_videoCode_' + videoCode),
            children: [
              player,
              ClipRRect(borderRadius: BorderRadius.circular(10), child: player)
              //some other widgets
            ],
          );
        });
  }
}
