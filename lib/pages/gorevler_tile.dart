import 'package:flutter/material.dart';

class GorevTile extends StatelessWidget {
  final bool secim;
  final String gorevAd;
  final Function checkboxCallBack;

  GorevTile({this.secim, this.gorevAd, this.checkboxCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        gorevAd,
        style: TextStyle(
            color: Color.fromRGBO(228, 245, 177, 1),
            fontSize: 20,
            decoration:
                secim ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: secim,
        onChanged: checkboxCallBack,
        activeColor: Color.fromRGBO(81, 43, 82, 1),
      ),
    );
  }
}
