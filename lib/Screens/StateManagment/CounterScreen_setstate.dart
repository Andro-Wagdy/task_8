import 'package:flutter/material.dart';

class CounterScreen_setstate extends StatefulWidget {
  CounterScreen_setstate({super.key});

  @override
  State<CounterScreen_setstate> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen_setstate> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    backgroundColor: Colors.red),
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "$_counter",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    backgroundColor: Colors.yellow),
                onPressed: () {
                  setState(() {
                    _counter--;
                  });
                },
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Text("Hello");
                });
              },
              child: Text("Show Text")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Image.asset(
                    "assets/images/circle.png",
                    width: 100,
                  );
                });
              },
              child: Text("Show Circle Image")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blue,
                    ),
                  );
                });
              },
              child: Text("Show Square")),
          ElevatedButton(onPressed: () {}, child: Text("Reset")),
        ],
      )),
    );
  }
}
