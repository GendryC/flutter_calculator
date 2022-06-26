import 'package:flutter/material.dart';
import 'package:fcalc/calc.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _calc = Calc();

  Widget _crearPantalla() {
    return Expanded(
        flex: 2,
        child: Container(
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(
                _calc.getActualString(),
                style: TextStyle(color: Colors.white, fontSize: 42),
                textAlign: TextAlign.end,
              ),
              Text(
                _calc.getResult(),
                style: TextStyle(color: Colors.white, fontSize: 42),
              ),
            ],
          ),
        ));
  }

  Widget _crearBotonera() {
    return Expanded(
      flex: 2,
      child: Container(
        height: 400,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                _crearBoton("AC", Colors.deepOrange),
                _crearBoton("DEL", Colors.deepOrange),
                _crearBoton("%", Colors.deepOrange),
                _crearBoton("/", Colors.deepOrange),
              ],
            ),
            Row(
              children: <Widget>[
                _crearBoton("7", Colors.white),
                _crearBoton("8", Colors.white),
                _crearBoton("9", Colors.white),
                _crearBoton("*", Colors.deepOrange),
              ],
            ),
            Row(
              children: <Widget>[
                _crearBoton("4", Colors.white),
                _crearBoton("5", Colors.white),
                _crearBoton("6", Colors.white),
                _crearBoton("-", Colors.deepOrange),
              ],
            ),
            Row(
              children: <Widget>[
                _crearBoton("1", Colors.white),
                _crearBoton("2", Colors.white),
                _crearBoton("3", Colors.white),
                _crearBoton("+", Colors.deepOrange)
              ],
            ),
            Row(
              children: <Widget>[
                _crearBoton("^", Colors.deepOrange),
                _crearBoton("0", Colors.white),
                _crearBoton(".", Colors.white),
                _crearBoton("=", Colors.deepOrange),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _crearBoton(String label, Color color) {
    return Expanded(
        flex: 1,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              _calc.addActual(label);
            });
          },
          style: ElevatedButton.styleFrom(primary: Colors.black),
          child: Text(
            label,
            style: TextStyle(fontSize: 42, color: color),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black87,
          title: Text(
            "Calculadora",
            style: TextStyle(
                color: Colors.deepOrange, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: <Widget>[
            _crearPantalla(),
            Divider(
              height: 0.2,
              color: Colors.deepOrange,
            ),
            _crearBotonera()
          ],
        ));
  }
}
