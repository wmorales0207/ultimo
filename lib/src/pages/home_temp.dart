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
      body: ListView(
        children: crearItems(),
        //children: crearItemCorta(),
      ),
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

// esta funcion devuelve una transformacion de lo que se guardo en una variable
  List<Widget> crearItemCorta() {
    var widget = opciones
        .map((e) => {
              ListTile(
                title: Text('$e !!'),
              )
            })
        .toList(); // esta forma aparentemente hace lo mismo pero la devolucion es un objeto totalmente diferente

    var otra = opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text('$item   !'),
            subtitle: const Text('testing'), // un subtitulo debado de n title
            leading: const Icon(Icons
                .account_balance_wallet), // esta propiedad pone un icono al incio de la columna
            trailing: const Icon(Icons
                .keyboard_arrow_right), // this line put an icon at the end of a line
            onTap:
                () {}, // solo con add la referencia de este metodo ya me habilita la posibilidad de dar clic en la columna
            // se habilita el efecto de dar clic.
          ),
          const Divider()
        ],
      );
    }).toList();

    return otra;
  }
}
