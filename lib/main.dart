import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: NetworkImage('https://tse1-mm.cn.bing.net/th/id/OIP.XvIVgdja1iFse6HW1W2wcwHaEy?w=300&h=194&c=7&o=5&pid=1.7'),
          radius: 100,
        ),
        new Positioned(
          top: 20,
          left: 100,
          child: new Text('北极狗熊')
        ),
        new Positioned(
          top: 120,
          left: 10,
          child: new Text('啦啦啦')
        )
      ],
    );

    return MaterialApp(
      title: 'flutter Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('flutter demo'),
        ),
        body: Center(
          child: stack,
        )
      ),
    );
  }
}