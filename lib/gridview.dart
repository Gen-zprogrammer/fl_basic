import 'package:flutter/material.dart';

class GridViews extends StatelessWidget {
  GridViews({super.key});

  final _colors = <int>[
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // child: GridView.count(
          //   padding: const EdgeInsets.all(16.0),
          //   // scrollDirection: Axis.horizontal,
          //   scrollDirection: Axis.vertical,
          //   //menentukan jumlah grid
          //   crossAxisCount: 2,
          //   mainAxisSpacing: 40,
          //   childAspectRatio: 2 / 1,
          //   crossAxisSpacing: 40,
          //   children: [
          //     Container(
          //       width: 500,
          //       color: Colors.amber,
          //     ),
          //     Container(
          //       width: 500,
          //       color: Colors.blue,
          //     ),
          //     Container(
          //       width: 500,
          //       color: Colors.red,
          //     ),
          //     Container(
          //       width: 500,
          //       color: Colors.green,
          //     ),
          //     Container(
          //       width: 500,
          //       color: Colors.blueGrey,
          //     ),
          //     Container(
          //       width: 500,
          //       color: Colors.amber,
          //     ),
          //   ],
          // ),
          // child: GridView.builder(
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 1,
          //     ),
          //     itemCount: _colors.length,
          //     itemBuilder: (context, index) {
          //       var color = _colors[index];
          //       return Container(
          //         height: 100,
          //         color: Colors.amber[color],
          //       );
          //     }),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 600,
                mainAxisSpacing: 15,
              ),
              itemCount: _colors.length,
              
              itemBuilder: (context, index) {
                var color = _colors[index];
                return Container(
                  color: Colors.amber[color],
                );
              }),
        ),
      ),
    );
  }
}
