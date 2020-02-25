import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
   createState() {
    
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage>{

  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

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
       Text('hola mundo2', style: _estiloTexto),
       Text('$_conteo'),
     ],
   )
),
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, //cambia la posicion del boton
floatingActionButton: _crearBotones()
  
    );
  }

Widget _crearBotones(){
return Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
    SizedBox(width: 30.0),
    FloatingActionButton(child: Icon(Icons.exposure_zero),backgroundColor: Colors.purple, onPressed: _reseteo),
  Expanded(child: SizedBox()),
  FloatingActionButton(child: Icon(Icons.remove), backgroundColor: Colors.purple, onPressed: _disminuir),
  SizedBox(width: 5.0),
  FloatingActionButton(child: Icon(Icons.add), backgroundColor: Colors.purple, onPressed: _agregar ),
  ],
);

}

void _agregar (){
  _conteo ++;
  setState(() {});
}

void _disminuir (){
  _conteo --;
  setState(() {});
}

void _reseteo (){
  _conteo = 0;
  setState(() {});
}


}