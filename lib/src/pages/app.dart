import 'package:flutter/material.dart';

class MyExampleApp extends StatelessWidget {
  const MyExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Text("Hola Mundo"),
      ),
    );
  }
}
