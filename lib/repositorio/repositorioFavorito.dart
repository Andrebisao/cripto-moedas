import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/modelos/moedas.dart';

class RepositorioFavorito extends ChangeNotifier {
  List<Moeda> _lista = [];
  late RepositorioFavorito favoritas;

  UnmodifiableListView<Moeda> get lista => UnmodifiableListView(_lista);

  saveAll(List<Moeda> moedas) {
    moedas.forEach((moeda) {
      if (!_lista.contains(moeda)) _lista.add(moeda);
    });
    notifyListeners();
  }

  remove(Moeda moeda) {
    _lista.remove(moeda);
    notifyListeners();
  }
}
