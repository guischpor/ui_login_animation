import 'package:flutter/material.dart';
import 'list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Front-end UI/UX',
          image: AssetImage(
            'images/perfil.jpg',
          ),
          margin: listSlidePosition.value * 3,
        ),
        ListData(
          title: 'Estudar NodeJS',
          subtitle: 'Bakc-end com nodeJS, Express!',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 2,
        ),
        ListData(
          title: 'Estudar Interface Design',
          subtitle: 'UI Design',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: 'Estudar Interface Design',
          subtitle: 'UX Design',
          image: AssetImage('images/perfil.jpg'),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
