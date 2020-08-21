import 'package:flutter/material.dart';
import 'package:training38_gorev_listesi_app2/pages/gorevler_tile.dart';
import 'package:training38_gorev_listesi_app2/modeller/gorev.dart';

class GorevListesi extends StatefulWidget {
  @override
  _GorevListesiState createState() => _GorevListesiState();
}

class _GorevListesiState extends State<GorevListesi> {
  List<Gorev> gorevListesi = [
    Gorev(gorevAd: "Spor Yap.", yapildi: false),
    Gorev(gorevAd: "Evi Temizle", yapildi: false),
    Gorev(gorevAd: "Flutter Çalış", yapildi: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: gorevListesi.length,
      itemBuilder: (context, index) => GorevTile(
        gorevAd: gorevListesi[index].gorevAd,
        secim: gorevListesi[index].yapildi,
        checkboxCallBack: (bool val) {
          setState(() {
            gorevListesi[index].toggleYapildi();
          });
        },
      ),
    );
  }
}
