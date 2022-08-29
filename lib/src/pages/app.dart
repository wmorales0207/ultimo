import 'package:flutter/material.dart';

import 'package:ultimo/src/pages/home_page.dart';
// Notas importantes.
/*1 Despues de cada asigancion de propiedad a un widget va una coma
2 Aunque en las asignaciones hallan widget dentro de widget se pone coma igual
3 Para las cadenas se puede usar lo mismo "", ''
4 todas las contrucciones de wiget son objetos que llevan un NEW, puedes ponerselo o no pero es un new.
5 StatelessWidget y StateFull son Widgetes obstractos, siempre se usan para pintar componentes, claro en dependencia del comporatmiento que se quiera lograr se una uno u otro.
 */

class MyExampleApp extends StatelessWidget {
  const MyExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      home: Center(
        child:
            HomePage(), //se hace una llamada a la siguiete clase, que se encarga de darle formato al center con el scalfold..
        //separando en este caso la logica,,,
      ),
    );
  }
}
