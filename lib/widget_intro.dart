import 'package:flutter/material.dart';

class WidgetIntroduction extends StatelessWidget {
  const WidgetIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: const Center(
            child: Text("Widget Introduction"),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: const Icon(
                Icons.settings,
              ),
            ),
          ],
        ),
        body: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
