import 'package:flutter/material.dart';


class DashBoard extends StatefulWidget {


  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  void dashBoardOption(){
    Text('Building');
  }

  @override
  Widget build(BuildContext context) {
          final theme =  Theme.of(context);

    return Scaffold(
        backgroundColor: theme.colorScheme.surface,
      
      body:   Column(

        children: [
          Column(children: [ElevatedButton(onPressed:(){
            print('Building');
            }, child: Text('Dash Board'))],)
        ],
        
        ),
      
       
    );
  }
}
