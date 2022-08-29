import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = const TextStyle(fontSize: 25);
  // la creacionde estiloTexto permite que no tenga que repetor codigo para hacer referencia al uso de la configuracion
  // de text Style de los textos..

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Titulo"),
        centerTitle: true,
        shadowColor: Colors.black, // modificando el comportamiento del widgets
      ),
      // la mayoria de los widgets solo pueden tener un child,
      // es comun usar el widgets Column o row para reflejar este asunto.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "numero de clics",
              style:
                  estiloTexto, // se uso un propiedad creada para eliminar la duplicidad de codigo
            ), // los contructores de todos los widget traten muchos otros parametros opcionales que se pueden usar
            Text(
              "0",
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          print("Hola Mene");
        }),
        child: const Icon(Icons.accessibility_new),
        // esta funcion vacia garantiza que se pueda hacer la accion de dar clic, si se le asigna NULL es como si el boton estuviese desabilitado
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
