import 'package:flutter/material.dart';


class DashBoard extends StatefulWidget {


  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
          final theme =  Theme.of(context);

    return Scaffold(
        backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(

        title: Text('Dash Board'),
      ),
      body: Center(

        child:  Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
          padding: EdgeInsets.all(100),
          child:  Text('Dash Board'),

          ),
        ],
        
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
