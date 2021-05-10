import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Returning data',
    home: MainScreen(),
  ),
  );
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
                _navigate(context);
              },
              child: Text('Pick any character'))),
    );
  }
}

_navigate(BuildContext context) async {
  final result = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondScreen()),
  );
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text("$result")));
}


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
        backgroundColor: Colors.teal[200],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                width: 70.0,
              ),
              RaisedButton(
                color: Colors.teal[200],
                onPressed: (){
                  Navigator.pop(context, 'Yoda');
                },
                child: Text('Yoda'),

              ),
              SizedBox(
                width: 50.0,
              ),
              RaisedButton(
                color: Colors.teal[200],
                onPressed: (){
                  Navigator.pop(context, 'Luke Skywalker');
                },
                child: Text('Luke Skywalker'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
