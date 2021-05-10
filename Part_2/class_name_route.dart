import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainScreen(),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
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
