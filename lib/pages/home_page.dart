import 'package:flutter/material.dart';

var MONTHS = [
  "Janurary",
  "Feburary",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December"
];

class HomePage extends StatelessWidget {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
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
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            'Welcome!',
            style: TextStyle(
              fontSize: 56,
            ),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${date.month}/${date.day}/${date.year}',
                style: TextStyle(fontSize: 20),
              ),
              OutlinedButton.icon(
                  icon: Icon(Icons.calendar_month, color: Colors.white),
                  label: Text('Choose a different date',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  onPressed: () async {
                    DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: date,
                      firstDate: DateTime(2022),
                      lastDate: DateTime(2024),
                    );

                    if (newDate == null) return;

                    date = newDate;
                  }),
            ],
          ),
        ),
      ]),
    );
  }
}
