import 'package:flutter/material.dart';
import 'package:training38_gorev_listesi_app2/pages/gorevler_tile.dart';
import 'package:training38_gorev_listesi_app2/modeller/gorev_veri.dart';
import 'package:provider/provider.dart';

class GorevListesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<GorevVeri>(context).gorevListesi.length,
      itemBuilder: (context, index) => GorevTile(
        gorevAd: Provider.of<GorevVeri>(context).gorevListesi[index].gorevAd,
        secim: Provider.of<GorevVeri>(context).gorevListesi[index].yapildi,
        checkboxCallBack: (bool val) {
          // setState(() {
          //   Provider.of<GorevVeri>(context).gorevListesi[index].toggleYapildi();
          // });
        },
      ),
    );
  }
}
