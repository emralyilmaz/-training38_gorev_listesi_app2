import 'package:flutter/material.dart';

class GorevlerEkran extends StatelessWidget {
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
          onPressed: () {}),
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
              decoration: BoxDecoration(
                  color: Color.fromRGBO(123, 176, 168, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
          )
        ],
      ),
    );
  }
}
