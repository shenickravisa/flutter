import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

/**
 * al ser un statelessWidget sus atributos son inmutables
 * pero al declararlos como finals se pueden utilizar
 */
  final estiloTexto = new TextStyle(fontSize:30);
  final conteo = 0;


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
          Text('Número de clicks:', style: estiloTexto),
          Text('$conteo', style: estiloTexto),
        ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),
        onPressed: () {
          print('hola mundo');
        },
      ),
    );
  }
}
/**
 * las paginas son widgets que heredan de StatelessWidget
 * dentro del return va a regresar el widget personalizado
 * ctrl space muestra todas las propiedades que espera
 * 
 * en este widget recibe un appBar que puede tener atributos textos checar doc para ver todos su atributos
 * 
 * y body principal que tiene un widget center que tiene un hijo texto
 * 
 * Column es un widget que permite el uso de widgets hijos
 * mainAxisAlignment: MainAxisAlignment.center, atributo que centra todo el contenido puede ser arriba abajo left o right
 * 
 * el atributo Text asi como algunos otros widgets reciben styles que modifican estilos basicos del widget
 * 
 * hay widgets los cuales tienen atributos requeridos como los floatingActionButtons
 * 
 *para los iconos checar material icons Icons.add

 los textos reciben string pero al ser declarados como enteros solo habra que hacer la conversion puede ser con toString o interpolar 
 '$conteo'
 */
