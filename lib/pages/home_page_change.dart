import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            "Welcome!",
            style: TextStyle(
              fontSize: 36,
            ),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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

                  setState(() => date = newDate);
                }),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('images/bball.png'),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('images/club.png'),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('images/grad.png'),
            ),
          ]),
        ),
      ]),
    );
  }
}
