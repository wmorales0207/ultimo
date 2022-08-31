import 'package:flutter/material.dart';
// los statefull conta de 2 clases el estado y el statefull . ambas clases.

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  createState() => _ContadorPageState();
}

// esta clase es el estado de la otra clase y no va ser usada fuera de la misma por lo que sera privada
class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = const TextStyle(fontSize: 30);
  final int _conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Statefull"),
        centerTitle: true,
        shadowColor: Colors.black, // modificando el comportamiento del widgets
      ),
      // la mayoria de los widgets solo pueden tener un child,
      // es comun usar el widgets Column o row para reflejar este asunto.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "numero de clics",
              style:
                  _estiloTexto, // se uso un propiedad creada para eliminar la duplicidad de codigo
            ), // los contructores de todos los widget traten muchos otros parametros opcionales que se pueden usar
            Text(
              "$_conteo",
              style: _estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          setState(() {
            // esta llamada hace que se redibuje el componente, no es necesario poner el codigo dentro de setstate.
            //
            print("Mene");
            _conteo + 2;
          });
        }),
        child: const Icon(Icons.accessibility_new),
        // esta funcion vacia garantiza que se pueda hacer la accion de dar clic, si se le asigna NULL es como si el boton estuviese desabilitado
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // la propiedad floatingActionButtonLocation es del scaffold y define la posicion del boton,en muchas ocasiones las caracteristicas las tiene el widget superior, es decir que el comportamiento de un widget lo define su widget padre.
      // siempre se debe revisar la documentacion para definir que recibe un widget.
    );
  }
}
