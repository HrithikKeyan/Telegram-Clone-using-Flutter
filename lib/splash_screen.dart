import 'package:flutter/material.dart';
import 'dart:async';
import 'chat_screen.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 @override
  void initState() {
    
    super.initState();
    timerLoader();
  }

  timerLoader() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

 route() {
   Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => ChatScreen()));
 }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset(
              "assets/images/telegram_logo.webp",
              height: 100.0,
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            new Text(
              "Telegram Clone",
              style: new TextStyle(
                color: Color(0xFF517DA2),
                fontSize: 22.0,
              ),
            ),
            new Padding(padding: EdgeInsets.only(top:20.0)),
            new CircularProgressIndicator(
            backgroundColor: Colors.white,
            strokeWidth: 3.0,
            ),
          ],
        ),
      ),
    ));
  }
}
