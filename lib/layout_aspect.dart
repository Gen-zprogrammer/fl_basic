import 'package:flutter/material.dart';

class LayoutAspect extends StatelessWidget {
  const LayoutAspect({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          //===========Aspect Ractio=================
          // child: Container(
          //   color: Colors.blue,
          //   alignment: Alignment.center,
          //   width: double.infinity,
          //   height: 100,
          //   child: AspectRatio(
          //     aspectRatio: 1 / 2,
          //     child: Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.green,
          //     ),
          //   ),
          // ),
          //=======Card==================
          // child: Card(
          //   elevation: 20,
          //   child: Column(
          //     children: [
          //       ListTile(
          //         leading: Icon(Icons.album),
          //         title: Text("Hello World!"),
          //         subtitle: Text("Music by henny adella"),
          //       ),
          //       const SizedBox(
          //       height: 5.0,
          //       ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: [
          //           TextButton(
          //             onPressed: () {},
          //             child: Text("Buy Ticket"),
          //           ),
          //           TextButton(
          //             onPressed: () {},
          //             child: Text("Listen"),
          //           ),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          //============Wrap===================
          child: Wrap(
            spacing: 50, //jarak samping chip
            runSpacing: 4, //jarak atas bawah chip
            alignment: WrapAlignment.end,
            children: [
              Chip(
                label: Text("John"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("J"),
                ),
              ),
              Chip(
                label: Text("Doe"),
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("D"),
                ),
              ),
              Chip(
                label: Text("Laurens"),
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue, child: Text("L")),
              ),
               Chip(
                label: Text("Prabowo"),
                avatar: CircleAvatar(
                    backgroundColor: Colors.blue, child: Text("P")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
