import 'package:flutter/material.dart';

class HeroesInfo with ChangeNotifier {
  String _heroe = 'Capitán América';
  Color color = Colors.blue;

  get heroe => _heroe;
  set heroe(String nombre) {
    this._heroe = nombre;

    this.color = (nombre == 'Ironman') ? Colors.red : Colors.blue;

    notifyListeners();
  }
}