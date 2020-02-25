import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle(fontSize: 25);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
appBar: AppBar(
  title: Text('titulo'),
  centerTitle: true,
  
  
),
body: Center(
   child: Column(
     mainAxisAlignment: MainAxisAlignment.center, //centra las columnas
     children: <Widget>[
       Text('hola mundo', style: estiloTexto),
       Text('$conteo'),
     ],
   )
),
floatingActionButton: FloatingActionButton(
  child: Icon(Icons.add),
  backgroundColor: Colors.purple,
  onPressed: (){
    //conteo +=1;
  }
  
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.endTop, //cambia la posicion del boton
    );
  }
}