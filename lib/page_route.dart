import 'package:flutter/material.dart';

class PagesRoute extends StatelessWidget {
  const PagesRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {},
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeccondPage()),
                );
              },
              child: Text("First Pagef"))
        ],
      ),
    );
  }
}

class SeccondPage extends StatelessWidget {
  const SeccondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seccond Page"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Seccond Page"),
          ),
        ],
      ),
    );
  }
}
