import 'package:flutter/material.dart';
import 'package:training38_gorev_listesi_app2/pages/gorevler_ekran.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GorevlerEkran(),
      debugShowCheckedModeBanner: false,
    );
  }
}
