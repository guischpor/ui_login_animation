import 'package:flutter/material.dart';
import 'home_top.dart';

class StaggerAnimationHome extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimationHome({@required this.controller})
      : containerGrow = CurvedAnimation(parent: controller, curve: Curves.ease);

  final Animation<double> containerGrow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        HomeTop(containerGrow: containerGrow),
      ],
    );
  }
}
