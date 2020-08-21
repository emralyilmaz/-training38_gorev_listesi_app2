import 'package:flutter/material.dart';
import 'package:training38_gorev_listesi_app2/pages/gorevler_tile.dart';
import 'package:training38_gorev_listesi_app2/modeller/gorev_veri.dart';
import 'package:provider/provider.dart';

class GorevListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<GorevVeri>(builder: (context, gorevVeri, child) {
      return ListView.builder(
        itemCount: gorevVeri.gorevSayisi,
        itemBuilder: (context, index) => GorevTile(
          gorevAd: gorevVeri.gorevListesi[index].gorevAd,
          secim: gorevVeri.gorevListesi[index].yapildi,
          checkboxCallBack: (bool val) {
            gorevVeri.gorevGuncelle(gorevVeri.gorevListesi[index]);
          },
          listTileLongPress: () {
            if (gorevVeri.gorevListesi[index].yapildi == true) {
              gorevVeri.gorevSil(gorevVeri.gorevListesi[index]);
            } else {
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text("Önce Görevi Yapmalısınız")));
            }
          },
        ),
      );
    });
  }
}
