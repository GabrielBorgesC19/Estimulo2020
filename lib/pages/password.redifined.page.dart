import 'package:doglife/controllers/password.redefined.controller.dart';
import 'package:doglife/pages/login.page.dart';
import 'package:flutter/material.dart';

class PasswordRedifinedPage extends StatelessWidget {
  final String emailAddress;
  final String recoveryCode;
  final _passwordController = new TextEditingController();
  final _verifyPasswordController = new TextEditingController();

  final _passwordRedefinedController = new RedefinePasswordController();

  PasswordRedifinedPage(this.emailAddress, this.recoveryCode) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Color(0xFFF525aaff),
            shadowColor: Colors.transparent,
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () => Navigator.pop(context, false),
            ),
          )),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [
              Color(0xFFF525aaff),
              Color(0XFFFF66FF),
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset("assets/reset-password-icon.png"),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Redefinir senha",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Digite a nova senha",
                          labelStyle: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      TextFormField(
                        controller: _verifyPasswordController,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Confirme a nova senha",
                          labelStyle: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 60,
                        alignment: Alignment.centerLeft,
                        color: Color(0XFF5BC8F5),
                        child: SizedBox.expand(
                          child: FlatButton(
                            child: Text(
                              "Confirmar",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            onPressed: () {
                              _passwordRedefinedController.onClickChange(
                                  context,
                                  emailAddress,
                                  recoveryCode,
                                  _passwordController.text,
                                  _verifyPasswordController.text);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
