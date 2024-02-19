import 'package:flutter/material.dart';

class LayoutStack extends StatelessWidget {
  const LayoutStack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: _stack(),
        )),
      ),
    );
  }

  Widget _stack() {
    return Stack(
      alignment:const  Alignment(1, -1),
      //alignment: Alignment.center,
      // x -1 right, 1 left
      //y 1 bottom -1 top
      // 0, 0 center
      //Align-Aligment
      //Positioned 

      children: <Widget>[
        Container(
          width: 300,
          height: 300,
          color: Colors.red,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ],
    );
  }
}
