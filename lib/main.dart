import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/SplashScreen': (BuildContext context) => new SplashScreen(),
      '/SecondPage': (BuildContext context) => new SecondPage(),
    },
  ));
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: ListView(
            children: <Widget>[
              Image(
                image: AssetImage("image/NITESH.jpg"),
                height: 1000.0,
                width: 750.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushNamed('/SecondPage');
  }

  // ignore: must_call_super
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
//               image: NetworkImage("https://www.telegraph.co.uk/content/dam/technology/2016/05/11/new-instagram-logo_1_trans_NvBQzQNjv4BqqVzuuqpFlyLIwiB6NTmJwfSVWeZ_vEN7c6bHu2jJnT8.jpg?imwidth=1400"),
//                    height: 40,
//                    width: 40,
                image: AssetImage("image/logo.png"),
                height: 200,
                width: 200,
              ),
              Text(
                "BLOGPOST",
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 20.5,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text("YOU HAVE LANDED")
            ],
          ),
        ),
      ),
    );
  }
}
