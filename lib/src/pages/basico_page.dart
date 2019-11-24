import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0 , color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _crearImage(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
        ),
      )
    );
  }

  Widget _crearImage() {
    return Container(
        width: double.infinity,
        child: Image(
        image: NetworkImage('https://www.zastavki.com/pictures/1920x1200/2011/Space_Unknown_galaxy_030741_.jpg'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    // safe area indica si se forma automatica podemos desplegar la informacion en ese espacio
    return SafeArea(
          top: false,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Space', style: estiloTitulo,),
                        SizedBox(height: 7.0),
                        Text('Unknow Galaxy', style: estiloSubtitulo),
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.red, size: 30.0, ),
                  Text('41', style: TextStyle(fontSize: 20.0))
                ]
              ),
          ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share')
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue, size: 40.0,),
            SizedBox(height: 5.0,),
            Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
          ],
      );
  }

  Widget _crearTexto() {
    return SafeArea(
        child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
        child: Text(
          'Mollit nostrud ex eiusmod id ex ea duis quis proident ipsum fugiat laboris ipsum.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}