import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training38_gorev_listesi_app2/modeller/gorev_veri.dart';
import 'package:training38_gorev_listesi_app2/modeller/gorev.dart';

class GorevEkle extends StatefulWidget {
  @override
  _GorevEkleState createState() => _GorevEkleState();
}

class _GorevEkleState extends State<GorevEkle> {
  String yeniGorev;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(
          56, 81, 77, 1), // circular arkasındaki koyu renklendirme
      child: Container(
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
            color: Color.fromRGBO(228, 245, 177, 1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Görev Ekle",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 30, color: Color.fromRGBO(81, 43, 82, 1)),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (val) {
                yeniGorev = val;
              },
            ),
            SizedBox(height: 40),
            FlatButton(
              onPressed: () {
                // widget.gorevEkle(yeniGorev);
                // print(yeniGorev);
                Provider.of<GorevVeri>(context, listen: false)
                    .gorevEkle(Gorev(gorevAd: yeniGorev));
                Navigator.pop(context);
              },
              child: Text(
                "Ekle",
                style: TextStyle(
                    color: Color.fromRGBO(228, 245, 177, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.normal),
              ),
              color: Color.fromRGBO(81, 43, 82, 1),
            )
          ],
        ),
      ),
    );
  }
}
