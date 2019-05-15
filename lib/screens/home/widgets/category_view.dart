import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_arrow_left),
            iconSize: 30,
            color: Colors.white,
          ),
          Text(
            'ESTUDOS',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w300),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.keyboard_arrow_right),
            iconSize: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
