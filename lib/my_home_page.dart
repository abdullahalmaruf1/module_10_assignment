import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const Text(
            'Welcome to Flutter!',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 30),
          Image.asset(
            'assets/images/logo.png', width: 190, height: 240, fit: BoxFit.cover,),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              const snackBar = SnackBar(content: Text('Button Pressed!'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: const Text('Press Me'),
          ),
        ],
      ),
    );
  }
}
