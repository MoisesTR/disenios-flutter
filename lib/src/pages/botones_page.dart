import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.4),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(85),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          )
        ),
      )
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          left: -30,
          top: -70,
          child: cajaRosa,
        )
      ],
    );
  }

  Widget _titulos() {

    return SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Classify Transaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 10.0),
              Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18.0),),
            ]
          ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0),
            title: Container()
          ),BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0),
            title: Container()
          )
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    // los table row deben tener la misma cantidad de elementso
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.access_time, 'Tiempo')
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blueGrey, Icons.add, 'Agregar'),
            _crearBotonRedondeado(Colors.amberAccent, Icons.accessible_forward, 'Accesibilidad')
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.deepOrangeAccent, Icons.add_a_photo, 'Foto'),
            _crearBotonRedondeado(Colors.indigoAccent, Icons.adjust, 'Ajustar')
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.redAccent, Icons.account_balance, 'Balance'),
            _crearBotonRedondeado(Colors.green, Icons.airline_seat_recline_extra, 'Airline')
          ]
        ),
        // TableRow(
        //   children: [
        //     _crearBotonRedondeado(),
        //     _crearBotonRedondeado()
        //   ]
        // )
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {

    return ClipRect(
          child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
          child: Container(
          height: 150,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icono, color: Colors.white, size: 30.0,),
              ),
              Text(texto, style: TextStyle(color: color))
            ],
          ),
        ),
      ),
    );
  }
}