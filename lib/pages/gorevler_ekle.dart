import 'package:flutter/material.dart';

class GorevEkle extends StatelessWidget {
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
            ),
            SizedBox(height: 40),
            FlatButton(
              onPressed: () {},
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