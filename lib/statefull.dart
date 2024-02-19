import 'package:flutter/material.dart';

class Statefull extends StatefulWidget {
  const Statefull({super.key});

  @override
  State<Statefull> createState() => _StatefullState();
}

class _StatefullState extends State<Statefull> {
  int count = 0;
  @override
  void initState() {
    _getThingsOnStartup().then(
      (value) => print("Async Finished"),
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$count"),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text("Tambah angka"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future _getThingsOnStartup() async {
  await Future.delayed(
    Duration(seconds: 3),
  );
}
