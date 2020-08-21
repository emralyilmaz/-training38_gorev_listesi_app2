import 'package:flutter/material.dart';
import 'package:training38_gorev_listesi_app2/pages/gorevler_ekle.dart';
import 'package:training38_gorev_listesi_app2/pages/gorevler_list.dart';
import 'package:training38_gorev_listesi_app2/modeller/gorev.dart';

class GorevlerEkran extends StatefulWidget {
  @override
  _GorevlerEkranState createState() => _GorevlerEkranState();
}

class _GorevlerEkranState extends State<GorevlerEkran> {
  List<Gorev> gorevListesi = [
    Gorev(gorevAd: "Spor Yap.", yapildi: false),
    Gorev(gorevAd: "Evi Temizle", yapildi: false),
    Gorev(gorevAd: "Flutter Çalış", yapildi: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(228, 245, 177, 1),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Color.fromRGBO(228, 245, 177, 1),
          ),
          backgroundColor: Color.fromRGBO(81, 43, 82, 1),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => GorevEkle((yeniGorev) {
                      setState(() {
                        // print(yeniGorev);
                        gorevListesi.add(Gorev(gorevAd: yeniGorev));
                      });
                      Navigator.pop(context);
                    }));
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, bottom: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(81, 43, 82, 1),
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Color.fromRGBO(228, 245, 177, 1),
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  "Görev Yöneticisi",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(81, 43, 82, 1)),
                ),
                SizedBox(height: 10.0),
                Text(
                  "5 Tane Görev Var.",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(81, 43, 82, 1)),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(123, 176, 168, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: GorevListesi(gorevListesi: gorevListesi),
            ),
          )
        ],
      ),
    );
  }
}
