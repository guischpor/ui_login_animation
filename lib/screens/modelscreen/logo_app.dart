import 'package:flutter/material.dart';

class LogoApp extends StatefulWidget {
  LogoApp({Key key}) : super(key: key);

  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    animation = Tween<double>(begin: 0, end: 300).animate(controller);

    //sempre que tiver alguma alteração o listener sempre será chamado
    animation.addListener(() {
      setState(() {});
    });

    //animar para frente com forward
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: animation.value,
        width: animation.value,
        child: FlutterLogo(),
      )),
    );
  }
}
