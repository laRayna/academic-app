// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalcPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
            // backgroundColor: Colors.amber,
            leading: Icon(Icons.menu),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(Icons.person),
              )
            ]),
        body: SafeArea(
            child: Container(
                child: Column(
          children: [
            Text("Grade Calculator",
                style: TextStyle(fontSize: 30, color: Colors.white)),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                  labelText: "Daily Grade Points",
                  labelStyle:
                      TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                  labelText: "Assesment Grade Points",
                  labelStyle:
                      TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                  labelText: "Major Grade Points",
                  labelStyle:
                      TextStyle(fontSize: 15, color: Colors.grey.shade400),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: size.height / 14,
              width: size.width / 7,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                "Determine DG",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: size.height / 14,
              width: size.width / 7,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                "Determine AS",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: size.height / 14,
              width: size.width / 7,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                "Determine MG",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ))));
  }
}
