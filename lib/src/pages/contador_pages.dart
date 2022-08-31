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
  int _conteo = 10;

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
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment
          .center, // define la alineacion del los widget contenidos en el row

      // por defecto el row alinia los widget a la izquierda
      children: <Widget>[
        const SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          onPressed: _putZero,
          child: const Icon(Icons.exposure_zero),
        ),
        const Expanded(
          // el expanded necesita un Child y por eso se le pone un SizedBox (vacio)
          child:
              SizedBox(), //por defecto no se nota , define espacios entre los widget
        ),
        FloatingActionButton(
          onPressed: _remove,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed:
              _agregar, // aca a pesar de que _agregr es un metodo no se pone parentesis
          // pues no se desea que se ejecute el codigo solo cuando se presione el boton no cuando se crea
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  void _remove() {
    setState(() => _conteo = 0);
  }

  void _putZero() {
    setState(() => _conteo--);
  }

  void _agregar() {
    setState(() => _conteo++);
  }
}
