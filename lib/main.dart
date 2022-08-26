import 'package:flutter/material.dart';
import 'package:ultimo/src/pages/home_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Componentes App',
        debugShowCheckedModeBanner: false,
        home: HomePageTemp());
  }
}
