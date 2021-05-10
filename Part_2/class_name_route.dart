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
      appBar: AppBar(title: Text('Main page')),
      body: Center(child: RaisedButton(
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
      appBar: AppBar(title: Text('Second page')),
      body: Center(child: RaisedButton(
          onPressed: (){
        Navigator.pop(context);
        },
          child: Text('Back'))),
    );
  }
}
