import 'package:flutter/material.dart';

/**
 * stateFullWidget importar material
 * widget como tal 
 * estado
 */

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 30);
  int _conteo = 10;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        elevation: 3,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Número de clicks:', style: _estiloTexto),
          Text('$_conteo', style: _estiloTexto),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
             _conteo++;
          });
        },
      ),
    );
  }
}

/**
 * necesario  ContadorPageState extends State  para que funcione
 * solo se utiliza en esta pagina el guion bajo es privado
 * 
 * createState retorna una nueva instancia del contador page
 * 
 * en el contadorPageState retorna todo la composicion del widget
 * 
 * los final son atributos que se pueden poner en privados como buena practica por que solo se usan ahi _
 * al utilizar los elmentos aqui para ser manipulados ya podemos utilizar tipos de datos 
 * 
 * al utilizar un statefulWidget es decir que podemos modificar sus valores
 * 
 * setState nos permite redibujar cuando exista un cambio en nuestra applicacion pueden ir la logica dentro o fuera lo importante es que se llame
 */
