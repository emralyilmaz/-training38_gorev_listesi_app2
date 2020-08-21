import 'package:flutter/material.dart';

class GorevTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "gorev1",
        style: TextStyle(
          color: Color.fromRGBO(228, 245, 177, 1),
          fontSize: 20,
        ),
      ),
      trailing: Checkbox(value: false, onChanged: (bool val) {}),
    );
  }
}
