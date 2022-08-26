import 'dart:html';

import 'package:flutter/material.dart';

import '../providers/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: _lista(),
    );
  }

// este metodo permite leer de un archivo Json y mostrar toda la info
  Widget _lista() {
    //
    return FutureBuilder(
      future: menuProvider
          .cargarData(), // este parametro define el metodo que devuelve un Future que trae la informacion.
      initialData: const [], // este es opcional, define la info inicial que pudiera tener el widget
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        // En este parametro se define lo que se hara con el resultado del future, eneste caso se le pasa como parametro a la funcion que llena el listview
        return ListView(
          children: _crearListItem(snapshot),
        );
      },
    );
  }

  List<Widget> _crearListItem(AsyncSnapshot<List<dynamic>> snapshot) {
    final List<Widget> opciones = [];

    snapshot.data?.forEach((element) {
      // aca no comprendi del todo el uso de ? en la linea. me parece que tiene que ver cpn el hecho de que no haya ningun resultado y el future venga con lo que se definio en el initialData del futureBuilder
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: const Icon(Icons.access_alarm, color: Colors.black),
        trailing: const Icon(Icons.access_alarm_outlined, color: Colors.red),
        onTap: () {
          // habilita la posibilidad de hacer clic, dentro de este metodo se pndria lo que se querria hacer en el clic.
        },
      );
      opciones
        ..add(widgetTemp)
        ..add(const Divider());
    });

    return opciones;
  }
}
