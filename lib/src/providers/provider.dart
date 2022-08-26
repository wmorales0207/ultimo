import 'package:flutter/services.dart' show rootBundle;
// en esta importacion se se aclara que solo se desea el rootBundle*( que es necesario para trabajar con JSON) que una parte de todo lo
// lo que compone el package:flutter/services.dart.

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    _cargarData();
  }

  _cargarData() {
    rootBundle.load('data/menu_opts.json').then((value) {
      print(value);
    });
  }
}

final menuProvider =
    _MenuProvider();// de esta manera solo se expone la instncia de _Menu provider
