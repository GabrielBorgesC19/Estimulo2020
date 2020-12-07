import 'package:doglife/controllers/profile.controller.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  String token;
  ProfilePage(this.token);
  @override
  _ProfilePageState createState() => _ProfilePageState(token);
}

class _ProfilePageState extends State<ProfilePage> {
  String token;
  UserProfile profile;
  _ProfilePageState(this.token);

  @override
  void initState() {
    super.initState();

    final profileController = ProfileController();
    profileController.getProfile(token).then((value) {
      setState(() {
        profile = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 1,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              border: new Border.all(color: Colors.transparent, width: 2.0),
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
          child: Text(
            "Perfil",
            style: TextStyle(color: Colors.white),
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
          alignment: Alignment(0.0, 1.15),
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 140,
                decoration: BoxDecoration(
                    border: Border.all(width: 8, color: Colors.white),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: new ExactAssetImage("assets/business-man-avatar.png"),
                        fit: BoxFit.fitHeight)),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                      transform: Matrix4.translationValues(0, 20, 0.0),
                      child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(0, 2))
                          ], shape: BoxShape.circle, color: Colors.white),
                          child: Icon(
                            Icons.edit,
                            color: Color(0XFFFF66FF),
                          ))),
                ),
              ),
              Center(
                child: Text(
                  profile != null ? "${profile.firstName}" : '-',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  children: [
                    header("SEUS DADOS"),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 25),
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          informationItem("Telefone",
                              profile != null ? profile.phoneNumber : '-'),
                          informationItem(
                              "E-mail", profile != null ? profile.email : '-')
                        ],
                      ),
                    ),
                    header("ENDEREÇO"),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 25),
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          informationItem("Endereço",
                              profile != null ? profile.address.address : '-'),
                          informationItem("Estado",
                              profile != null ? profile.address.state : '-')
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget informationItem(name, value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.only(bottom: 7),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.grey[300], width: 5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                value,
              ))
        ],
      ),
    );
  }

  Widget header(title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child: Text(
        title,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF525aaff),
              Color(0XFFFF66FF),
            ],
          )),
    );
  }
}
