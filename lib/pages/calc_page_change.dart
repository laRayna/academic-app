// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({Key? key}) : super(key: key);

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  TextEditingController _DG = TextEditingController();
  TextEditingController _AS = TextEditingController();
  TextEditingController _MG = TextEditingController();
  TextEditingController _stu = TextEditingController();
  TextEditingController _max = TextEditingController();
  TextEditingController _weight = TextEditingController();
  TextEditingController _poss = TextEditingController();
  double? DG,
      AS,
      MG,
      stu,
      max,
      weight,
      otherPts,
      temp,
      possible = 0.0,
      resultsA = 0.0,
      resultsB = 0.0,
      resultsC = 0.0;

  Daily(double want) {
    setState(() {
      DG = double.parse(_DG.text);
      AS = double.parse(_AS.text);
      MG = double.parse(_MG.text);
      stu = double.parse(_stu.text);
      max = double.parse(_max.text);
      weight = double.parse(_weight.text);

      otherPts = MG! + AS!;
      max = max! + 100;

      temp = double.parse(_poss.text);
      if (temp! > 0.0) {
        possible = (((stu! + temp!) / max!) * weight!) + otherPts!;
      }
      if (want > 80) {
        resultsA = double.parse(
            (max! * ((want - otherPts!) / weight!) - stu!).toStringAsFixed(2));
        if (resultsA! > 100 || resultsA! < 0) {
          resultsA = -1;
        }
      } else if (want > 70) {
        resultsB = double.parse(
            (max! * ((want - otherPts!) / weight!) - stu!).toStringAsFixed(2));
        if (resultsB! > 100 || resultsB! < 0) {
          resultsB = -1;
        }
      } else {
        resultsC = double.parse(
            (max! * ((want - otherPts!) / weight!) - stu!).toStringAsFixed(2));
        if (resultsC! > 100 || resultsC! < 0) {
          resultsC = -1;
        }
      }
    });
  }

  Assessment(double want) {
    setState(() {
      DG = double.parse(_DG.text);
      AS = double.parse(_AS.text);
      MG = double.parse(_MG.text);
      stu = double.parse(_stu.text);
      max = double.parse(_max.text);
      weight = double.parse(_weight.text);

      otherPts = MG! + DG!;
      max = max! + 100;

      temp = double.parse(_poss.text);
      if (temp! > 0.0) {
        possible = (((stu! + temp!) / max!) * weight!) + otherPts!;
      }

      if (want > 80) {
        resultsA = double.parse(
            (max! * ((want - otherPts!) / weight!) - stu!).toStringAsFixed(2));
        if (resultsA! > 100 || resultsA! < 0) {
          resultsA = -1;
        }
      } else if (want > 70) {
        resultsB = double.parse(
            (max! * ((want - otherPts!) / weight!) - stu!).toStringAsFixed(2));
        if (resultsB! > 100 || resultsB! < 0) {
          resultsB = -1;
        }
      } else {
        resultsC = double.parse(
            (max! * ((want - otherPts!) / weight!) - stu!).toStringAsFixed(2));
        if (resultsC! > 100 || resultsC! < 0) {
          resultsC = -1;
        }
      }
    });
  }

  Major(double want) {
    setState(() {
      DG = double.parse(_DG.text);
      AS = double.parse(_AS.text);
      MG = double.parse(_MG.text);
      stu = double.parse(_stu.text);
      max = double.parse(_max.text);
      weight = double.parse(_weight.text);

      otherPts = AS! + DG!;
      max = max! + 100;

      temp = double.parse(_poss.text);
      if (temp! > 0.0) {
        possible = (((stu! + temp!) / max!) * weight!) + otherPts!;
      }

      if (want > 80) {
        resultsA = double.parse(
            (max! * ((want - otherPts!) / weight!) - stu!).toStringAsFixed(2));
        if (resultsA! > 100 || resultsA! < 0) {
          resultsA = -1;
        }
      } else if (want > 70) {
        resultsB = double.parse(
            (max! * ((want - otherPts!) / weight!) - stu!).toStringAsFixed(2));
        if (resultsB! > 100 || resultsB! < 0) {
          resultsB = -1;
        }
      } else {
        resultsC = double.parse(
            (max! * ((want - otherPts!) / weight!) - stu!).toStringAsFixed(2));
        if (resultsC! > 100 || resultsC! < 0) {
          resultsC = -1;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
            // backgroundColor: Colors.amber,
            title: Text("HAC calculator"),
            leading: Icon(Icons.menu),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(Icons.person),
              )
            ]),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    child: Column(
                  children: [
                    Text("General info",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: _DG,
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                          labelText: "Daily Grade Points",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _AS,
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                          labelText: "Assesment Grade Points",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _MG,
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                          labelText: "Major Grade Points",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Category info",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: _stu,
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                          labelText: "Student points",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _max,
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                          labelText: "Max points",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _weight,
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                          labelText: "Weight of category",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _poss,
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                          labelText:
                              "(Optional - grade prediction) Possible Grade",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Calculate",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(
                      height: 30,
                    ),
                    Text("-1 means the grade is impossible to achieve",
                        style: TextStyle(fontSize: 10, color: Colors.white)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Daily(89.5);
                                Daily(79.5);
                                Daily(69.5);
                              },
                              child: Text("Daily Grade")),
                          ElevatedButton(
                              onPressed: () {
                                Assessment(89.5);
                                Assessment(79.5);
                                Assessment(69.5);
                              },
                              child: Text("Assessment")),
                          ElevatedButton(
                              onPressed: () {
                                Major(89.5);
                                Major(79.5);
                                Major(69.5);
                              },
                              child: Text("Major Grade")),
                        ]),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Grade to maintain/achieve an A: $resultsA",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Grade to maintain/achieve a B: $resultsB",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Grade to maintain/achieve a C: $resultsC",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(
                      height: 30,
                    ),
                    Text("(Optional) Predicted Grade: $possible",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _DG.clear();
                          _AS.clear();
                          _MG.clear();
                          _stu.clear();
                          _max.clear();
                          _weight.clear();
                          _poss.clear();
                          resultsA = 0.0;
                          resultsB = 0.0;
                          resultsC = 0.0;
                        },
                        child: Text("Restart")),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                )))));
  }
}
