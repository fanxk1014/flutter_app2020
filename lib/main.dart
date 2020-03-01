import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  items: new List<String>.generate(100, (i) => "item $i")
));

class MyApp extends StatelessWidget{
  final List<String> items;
  MyApp({Key key, @required this.items}):super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello world')
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            return new ListTile(
              title: new Text('${items[index]}')
            );
          }
        )
      )
    );
  }
}

// class MyList extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//               scrollDirection: Axis.horizontal,
//               children: <Widget>[
//                 Container(
//                   width: 150,
//                   color: Colors.lightBlue
//                 ),
//                 Container(
//                   width: 150,
//                   color: Colors.lightGreen
//                 ),
//                 Container(
//                   width: 150,
//                   color: Colors.orange
//                 ),
//                 Container(
//                   width: 150,
//                   color: Colors.pinkAccent
//                 ),
//               ],
//             );
//   }
// }