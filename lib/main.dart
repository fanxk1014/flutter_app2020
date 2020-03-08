import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: '页面跳转返回数据',
    home: FirstScreen()
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('找供应商要电话')),
      body: Center(
        child: RouteButton()
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('去找供应商'),
      onPressed: (){
        _navigateToXiaoJieJie(context);
      }
    );
  }

  _navigateToXiaoJieJie(BuildContext context) async{
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => XiaoJieJie())
    );
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
    
  }
  
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我是供应商')),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.pop(context, '飞机666');
              },
              child: Text('飞机')
            ),
            RaisedButton(
              onPressed: (){
                Navigator.pop(context, '坦克666');
              },
              child: Text('坦克')
            )
          ]
        )
      ),
    );
  }
}