import 'package:flutter/material.dart';

class AppBarSliver extends StatelessWidget {
  const AppBarSliver({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: Scaffold(
    // appBar: AppBar(
    //   backgroundColor: Colors.lightBlue,
    //   toolbarHeight: 80,
    //   toolbarOpacity: 0.5,
    //   leading: IconButton(
    //       onPressed: () {
    //         Navigator.push(
    //           context,
    //           MaterialPageRoute(builder: (context) => SeccondPage()),
    //         );
    //       },
    //       icon: Icon(Icons.menu)),
    //   // leadingWidth: 100,
    //   title: Text("App Bar"),
    //   actions: [
    //     IconButton(
    //       onPressed: () {},
    //       icon: const Icon(
    //         Icons.settings,
    //         size: 24.0,
    //       ),
    //     ),
    //     SizedBox(
    //       width: 20,
    //     ),
    //     IconButton(
    //       onPressed: () {},
    //       icon: const Icon(
    //         Icons.more,
    //         size: 24.0,
    //       ),
    //     ),
    //   ],
    // ),
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            backgroundColor: Colors.blue,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('SliverAppBar'),
              background: Image.asset(
                'assets/images/coffee.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.grey,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 4),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
    // body:
    // Center(
    //   child: Text("App Bar"),
    // );
  }
}

class SeccondPage extends StatelessWidget {
  const SeccondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Seccond")],
        ),
      ),
    );
  }
}
