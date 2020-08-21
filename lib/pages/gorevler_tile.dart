import 'package:flutter/material.dart';

class GorevTile extends StatefulWidget {
  @override
  _GorevTileState createState() => _GorevTileState();
}

class _GorevTileState extends State<GorevTile> {
  bool secim = false;
  void secimDegistirmeFonk(bool yeniSecim) {
    setState(() {
      secim = yeniSecim;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "gorev1",
        style: TextStyle(
          decoration: secim ? TextDecoration.lineThrough : null,
          color: Color.fromRGBO(228, 245, 177, 1),
          fontSize: 20,
        ),
      ),
      trailing: GorevCheckBox(
        secim: secim,
        secimDegistir: secimDegistirmeFonk,
      ),
    );
  }
}

class GorevCheckBox extends StatelessWidget {
  final bool secim;
  final Function secimDegistir;

  GorevCheckBox({this.secim, this.secimDegistir});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: secim,
      onChanged: secimDegistir,
      activeColor: Color.fromRGBO(81, 43, 82, 1),
    );
  }
}
