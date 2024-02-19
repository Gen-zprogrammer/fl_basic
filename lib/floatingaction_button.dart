import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text("data"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        // foregroundColor: Colors.red,
        // mini: true,
        onPressed: () {},
        // child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Floating Action Button")),
        ],
      ),
    );
  }
}
