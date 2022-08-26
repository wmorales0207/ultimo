import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
// en esta importacion se se aclara que solo se desea el rootBundle*( que es necesario para trabajar con JSON) que una parte de todo lo
// lo que compone el package:flutter/services.dart.

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    //_cargarData();
  }

//Esta funcion devuelve un future que contiene una lista... de esta forma es que se puede
// garantizar que lo que se devuelva sea correcto.
  Future<List<dynamic>> _cargarData() async {
    var then = rootBundle.load('data/menu_opts.json');
    Map dataMap = json.decode(then.toString());
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProvider =
    _MenuProvider(); // de esta manera solo se expone la instncia de _Menu provider
