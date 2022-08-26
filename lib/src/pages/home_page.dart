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
    return ListView(
      children: _crearListItem(),
    );
  }

  List<Widget> _crearListItem() {
    print(menuProvider.opciones);

    return [
      const ListTile(
        title: Text('hola mundo'),
      ),
      const Divider(),
      const ListTile(
        title: Text('hola mundo'),
      ),
      const Divider(),
      const ListTile(
        title: Text('hola mundo'),
      ),
    ];
  }
}
