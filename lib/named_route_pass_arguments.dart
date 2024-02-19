import 'package:flutter/material.dart';

class NamedRoutePassArguments extends StatelessWidget {
  const NamedRoutePassArguments({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => SeccondPage(),
      },
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
                Navigator.pushNamed(
                  context, '/second'
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
