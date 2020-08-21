import 'package:flutter/foundation.dart';
import 'gorev.dart';

class GorevVeri with ChangeNotifier {
  List<Gorev> gorevListesi = [
    Gorev(gorevAd: "Spor Yap.", yapildi: false),
    Gorev(gorevAd: "Evi Temizle", yapildi: false),
    Gorev(gorevAd: "Flutter Çalış", yapildi: false),
  ];
}
