import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => MainScreen(),
      '/second' : (context) => SecondScreen(),
    },
  ));
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Main page'),
          backgroundColor: Colors.teal[200],
      ),
      body: Center(
          child: RaisedButton(
            color: Colors.teal[200],
          onPressed: (){
            Navigator.pushNamed(context, '/second');
            },
            child: Text('Open second page'))),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Second page'),
          backgroundColor: Colors.teal[200],
      ),
      body: Center(
          child: RaisedButton(
            color: Colors.teal[200],
          onPressed: (){
            Navigator.pop(context);
            },
          child: Text('Back'))),
    );
  }
}
