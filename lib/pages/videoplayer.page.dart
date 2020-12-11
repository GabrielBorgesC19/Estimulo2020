import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'capacitacao.page.dart';

class VideoPlayerPage extends StatefulWidget {
  LeassonItem leassonItem;
  VideoPlayerPage(this.leassonItem);
  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState(leassonItem);
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  LeassonItem leassonItem;
  bool _fullScreen = false;
  YoutubePlayerController _controller;

  _VideoPlayerPageState(this.leassonItem);

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: leassonItem.videoCode,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _fullScreen
          ? null
          : AppBar(
              elevation: 1,
              backgroundColor: Color(0xFFECF0F3),
              shadowColor: Colors.transparent,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  border: new Border.all(color: Colors.transparent, width: 2.0),
                  borderRadius: new BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                ),
              ),
              title: Center(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    leassonItem.title,
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                      color: Color(0xFF494A4B),
                    ),
                  ),
                ),
              ),
              actions: <Widget>[
                Container(
                  width: 60,
                ),
              ],
            ),
      body: Container(
          decoration: BoxDecoration(color: Color(0xFFECF0F3)),
          child: Column(
            children: [
              Container(
                margin: _fullScreen
                    ? EdgeInsets.zero
                    : EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: _fullScreen
                      ? BorderRadius.zero
                      : BorderRadius.circular(10),
                  child: videoPlayer(leassonItem.videoCode),
                ),
              ),
              _fullScreen
                  ? Container()
                  : Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/teacher-avatar.png',
                            width: 70,
                          ),
                          Column(
                            children: [
                              Text(
                                leassonItem.mentor,
                                style: TextStyle(
                                    color: Colors.pink[500],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 15),
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color(0xFFECF0F3)),
                                      child: Icon(Icons.thumb_up_alt_outlined,
                                          size: 18),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 15),
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Color(0xFFECF0F3),
                                      ),
                                      child: Icon(
                                        Icons.thumb_down_alt_outlined,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 44),
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFFECF0F3)),
                                  child: Icon(Icons.share_outlined, size: 18),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(0, 3))
                          ])),
              _fullScreen
                  ? Container()
                  : Expanded(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3))
                            ]),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 30),
                                  child: Text(
                                    leassonItem.description,
                                    style: TextStyle(fontSize: 17),
                                  )),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et magna non nisl imperdiet efficitur. Etiam dictum, dui eu sodales pharetra, tellus metus porttitor sapien, at fermentum neque ex id ligula. Vestibulum mattis dolor magna, et ultrices mi fringilla eget. Aenean a dui eros. Aliquam nec urna luctus, laoreet tellus non, ullamcorper magna. Nunc aliquam at turpis sed hendrerit. Duis auctor dapibus tincidunt. Donec vel lobortis nisl." +
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et magna non nisl imperdiet efficitur. Etiam dictum, dui eu sodales pharetra, tellus metus porttitor sapien, at fermentum neque ex id ligula. Vestibulum mattis dolor magna, et ultrices mi fringilla eget. Aenean a dui eros. Aliquam nec urna luctus, laoreet tellus non, ullamcorper magna. Nunc aliquam at turpis sed hendrerit. Duis auctor dapibus tincidunt. Donec vel lobortis nisl.",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFF848788)),
                              )
                            ])),
                      ))
            ],
          )),
    );
  }

  Widget videoPlayer(videoCode) {
    return YoutubePlayerBuilder(
        onEnterFullScreen: () {
          setState(() {
            _fullScreen = true;
          });
        },
        onExitFullScreen: () {
          setState(() {
            _fullScreen = false;
          });
        },
        player: YoutubePlayer(
          controller: _controller,
        ),
        builder: (context, player) {
          return ClipRRect(
              borderRadius:
                  _fullScreen ? BorderRadius.zero : BorderRadius.circular(10),
              child: player);
        });
  }
}
