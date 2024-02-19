import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            // child: Container(
            //   // padding: EdgeInsets.all(8),
            //   color: Colors.grey,
            //   height: 200,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       _blueBox(),
            //       SizedBox(height: 200, child: _blueBox()),
            //       _blueBox(),
            //     ],
            //   ),
            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 100,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100.0,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100.0,
                  width: 100,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _blueBox() {
    return Container(
      color: const Color.fromRGBO(255, 193, 7, 1),
      width: 100,
    );
  }
}
