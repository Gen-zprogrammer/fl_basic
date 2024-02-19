import 'package:flutter/material.dart';

class ListViews extends StatelessWidget {
  ListViews({super.key});

  final List<int> colorsCodes = <int>[700, 500, 100, 300, 600, 200];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.blueGrey,
            // height: 100,
            // width: 100,
            // decoration: const BoxDecoration(
            //   color: Colors.blue,
            // // ),
            //=========List View===============
            // child: ListView(
            //   scrollDirection: Axis.vertical,
            //    padding: EdgeInsets.all(8),
            //   //shrinkWrap: true,
            //   // reverse: true,
            //   children: [
            //     Container(
            //       color: Colors.red,
            //       height: 100,
            //     ),
            //     Container(
            //       color: Colors.green,
            //       height: 100,
            //     ),
            //     Container(
            //       color: Colors.orange,
            //       height: 100,
            //     ),
            //   ],
            // ),
            //==========List View.Builder=====================
            // child: ListView.builder(
            //   padding: EdgeInsets.all(16),
            //   itemCount: colorsCodes.length,
            //   itemBuilder: (context, int index) {
            //     return Container(
            //         height: 100, color: Colors.amber[colorsCodes[index]]);
            //   },
            // ),
            //===============List View.Separated==============
            child: ListView.separated(
              padding: EdgeInsets.all(16),
              itemCount: colorsCodes.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                      color: Colors.amber[colorsCodes[index]],
                  ),
           
                );
              },
              separatorBuilder: (context, index) => Divider(),
            ),
            // child: ListView.separated(
            //   padding: EdgeInsets.all(16),
            //   itemCount: dataFromApi.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return ListTile(
            //       leading: Image.asset(dataFromApi[index]['url']!),
            //       title: Text(dataFromApi[index] ['title']!),
            //       subtitle: Text(dataFromApi[index] ['subtitle']!),
            //     );
            //   },
            //   separatorBuilder: (context, index) => Divider(),
            // ),
          ),
        ),
      ),
    );
  }
}
