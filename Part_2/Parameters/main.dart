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

class ScreenArguments{
  final String message;
  ScreenArguments(this.message);
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
            Navigator.pushNamed(context, '/second',
                arguments: ScreenArguments('May the force be with you!')
            );
            },
            child: Text('Open second page'))),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
          title: Text('Second page'),
          backgroundColor: Colors.teal[200],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              color: Colors.teal[200],
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
            Text(args.message),
          ],
      ),
    );
  }
}
