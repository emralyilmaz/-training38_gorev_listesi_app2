import 'package:flutter/material.dart';
import 'package:training38_gorev_listesi_app2/pages/gorevler_tile.dart';
import 'package:training38_gorev_listesi_app2/modeller/gorev.dart';

class GorevListesi extends StatefulWidget {
  final List<Gorev> gorevListesi;
  GorevListesi({this.gorevListesi});
  @override
  _GorevListesiState createState() => _GorevListesiState();
}

class _GorevListesiState extends State<GorevListesi> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.gorevListesi.length,
      itemBuilder: (context, index) => GorevTile(
        gorevAd: widget.gorevListesi[index].gorevAd,
        secim: widget.gorevListesi[index].yapildi,
        checkboxCallBack: (bool val) {
          setState(() {
            widget.gorevListesi[index].toggleYapildi();
          });
        },
      ),
    );
  }
}
