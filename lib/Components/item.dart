import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  String titulo, paragrafo, btnText;
  Item({this.titulo = "", this.paragrafo = "", this.btnText = ""});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(titulo),
            ),
            FittedBox(
                fit: BoxFit.cover,
                child: Column(
                  children: [
                    Text(
                      paragrafo,
                      textAlign: TextAlign.center,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text(btnText))
                  ],
                ))
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
      width: 70,
      height: 120,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(10)),
    );
  }
}
