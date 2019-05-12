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

    animation = CurvedAnimation(curve: Curves.easeInCubic, parent: controller);
    //verificar quando uma animation iniciou ou não
    animation.addStatusListener((status) {
      //se o status da animation estar completa
      if (status == AnimationStatus.completed) {
        controller.reverse();
      }
      //caso  não tenha terminado e chegar no zero
      else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
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
      body: Portelaransition(
        child: LogoWidget(),
        animation: animation,
      ),
    );
  }
}

// class AnimatedLogo extends AnimatedWidget {
//   AnimatedLogo(Animation<double> animation) : super(listenable: animation);

//   @override
//   Widget build(BuildContext context) {
//     final Animation<double> animation = listenable;
//     return Center(
//         child: Container(
//       height: animation.value,
//       width: animation.value,
//       child: FlutterLogo(),
//     ));
//   }
// }

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlutterLogo(),
    );
  }
}

class Portelaransition extends StatelessWidget {
  //const GrowTransition({Key key}) : super(key: key);

  final Widget child;
  final Animation<double> animation;

  final sizeTween = Tween<double>(begin: 0, end: 300);
  final opacityTween = Tween<double>(begin: 0.1, end: 1);

  Portelaransition({this.child, this.animation});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Opacity(
              opacity: opacityTween.evaluate(animation).clamp(0, 1.0),
              child: Container(
                height: sizeTween.evaluate(animation),
                width: sizeTween.evaluate(animation),
                child: child,
              ));
        },
        child: child,
      ),
    );
  }
}
