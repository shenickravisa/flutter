import 'package:flutter/material.dart';
//import 'pages/home_page.dart';
import 'pages/contador_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          //child: HomePage(),
          child: ContadorPage(),
        ),
      );
  }
}

/**
 * toda aplicacion principal es un widget que funcionan como clases las cuales heredan sus caracteristicas de las dos formas de widgets que existen
 * stateless y statefull
 * el metodo build es parte de stateless y retorna un Widget el cual contiene todos los elementos disponibles como widgets en flutter
 * context contiene la informacion del arbol de widgets y los temas
 * MaterialApp(); ejecuta todos los argumentos con nombre lo cual es un widget y un widget es cualquier cosa
 * cuando los widgets tengan como argumento widget con child podemos incluirlos dentro de otros mismos.
 * 
 * HomePage () es nuestra clase de pagina home que se carga en app 
 */
