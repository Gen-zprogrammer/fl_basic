import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Back'),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  // child: ClipOval(
                  //   child: Image.asset(
                  //     'assets/images/coffee.jpg',
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(150),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/coffee.jpg',
                      ),
                    ),
                  ),
          
                  // child: Image.asset(
                  //   'assets/images/coffee.jpg',
                  //   fit: BoxFit.cover,
                  // ),
          
                  // child: Image.network(
                  //   "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                  //   width: 300.0,
                  //   height: 300.0,
                  //   fit: BoxFit.cover,
                  // repeat: ImageRepeat.repeat,
                  // color: Colors.blue,
                  // colorBlendMode: BlendMode.colorDodge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
