import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            //alignment: Alignment.topCenter,
            //margin: EdgeInsets.all(150),
            // padding: EdgeInsets.all(16),
            // transform: Matrix4.rotationY(100),
            width: 300,
            height: 300,
            //color: Colors.amber,
            decoration: BoxDecoration(
              //   color: Colors.blue,
              //   borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
              border: Border.all(
                color: Colors.red,
                width: 5,
              ),
            ),
            child: const Text(
              "Hello World",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration:
                    TextDecoration.lineThrough, //buat garis ditengah text
                decorationColor: Colors.green,
                decorationStyle: TextDecorationStyle.dashed, //garis putus*
                letterSpacing: 20, //mengatur jarak spasi
              ),
            ),
          ),
        ),
      ),
    );
  }
}
