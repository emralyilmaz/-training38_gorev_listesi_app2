import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'gorev.dart';

class GorevVeri with ChangeNotifier {
  List<Gorev> gorevListesi = [
    Gorev(gorevAd: "Spor Yap.", yapildi: false),
    Gorev(gorevAd: "Evi Temizle", yapildi: false),
    Gorev(gorevAd: "Flutter Çalış", yapildi: false),
  ];

  int get gorevSayisi {
    return gorevListesi.length;
  }

  void gorevEkle(Gorev yeniGorev) {
    gorevListesi.add(yeniGorev);
    notifyListeners();
  }
}
