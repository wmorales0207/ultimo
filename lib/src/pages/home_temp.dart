import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});
  static var opciones = ['uno', 'dos', 'tres'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Temp'),
      ),
      body: ListView(),
    );
  }

// creacion de un metodo para devolver una lista de widget a partir de un listado
//previo de elementos.
  List<Widget> crearItems() {
    List<Widget> listWidget = [];

    for (var element in opciones) {
      final tempwidget = ListTile(
        title: Text(element),
      );
      listWidget.add(tempwidget);
      listWidget.add(const Divider());
    }
    return listWidget;
  }
}