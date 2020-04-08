import 'package:flutter/material.dart';
import 'package:telegram/splash_screen.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Telegram Clone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF517DA2),
        accentColor: Color(0xFF66A9E0),
        backgroundColor: Colors.white,
        
      ),
      home: SplashScreen(),
    );
  }
}
