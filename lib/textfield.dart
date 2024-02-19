import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  const TextFields({super.key});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  late final TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: _controller,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}

class SeccondPage extends StatelessWidget {
  final String userInput;

  const SeccondPage({super.key, required this.userInput});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userInput),
      ),
      body: Center(
        child: Text(userInput),
      ),
    );
  }
}
