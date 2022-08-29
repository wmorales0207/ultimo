import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Titulo"),
        centerTitle: true,
        shadowColor: Colors.black, // modificando el comportamiento del widgets
      ),
      body: const Center(
        child: Text('Hola mundo'),
      ),
    );
  }
}
