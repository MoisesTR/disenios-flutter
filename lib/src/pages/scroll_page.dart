import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
      )
    );
  }

  Widget _pagina1() {
    // EL orden importa, los primeros son los que estan mas al fondo
    return Stack(
      children: <Widget>[
        _colorFondo(Color.fromRGBO(108, 192, 218, 1.0)),
        _imageFondo(),
        _crearTextos()
      ],
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: _botonDeFondo(),
      ),
    );
  }

  Widget _colorFondo(Color color) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: color,
      child: Center(
        child: _botonDeFondo(),
      ),
    );
  }

  Widget _imageFondo() {
  return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      )
    );
  }

  Widget _crearTextos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
          child: Column(
          children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11°', style: estiloTexto),
          Text('Miércoles', style: estiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }

  Widget _botonDeFondo() {
    return RaisedButton(
      onPressed: () {
        print('Has presionado el boton');
      },
      shape: StadiumBorder(),
      textColor: Colors.white,
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
        'Bienvenidos',
        style: TextStyle(fontSize: 20.0),
      )
      ),
    );
  }
}