import 'package:flutter/material.dart';

class task_setstate extends StatefulWidget {
  task_setstate({super.key});
  Color buttonColor1 = Colors.red;
  Color buttonColor2 = Colors.red;
  Color buttonColor3 = Colors.red;
  Color buttonColor4 = Colors.red;
  int index = 0;
  bool _obscureText = true;
  IconData _toggleIcon = Icons.visibility_off;
  List<String> filterbar = [
    "Being Checked",
    "Completed",
    "cancled",
    "in progress"
  ];

  @override
  State<task_setstate> createState() => _Task_8_setstateState();
}

class _Task_8_setstateState extends State<task_setstate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widget.index = 1;
                          widget.buttonColor1 =
                              Colors.red; // Change color to blue
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            widget.index == 1 ? Colors.red : Colors.grey,
                      ),
                      child: Text("Being Checked",
                          style: TextStyle(color: Colors.black))),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widget.index = 2;
                          widget.buttonColor2 =
                              Colors.red; // Change color to blue
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            widget.index == 2 ? Colors.red : Colors.grey,
                      ),
                      child: Text(
                        "Completed",
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widget.index = 3;
                          widget.buttonColor3 =
                              Colors.red; // Change color to blue
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            widget.index == 3 ? Colors.red : Colors.grey,
                      ),
                      child: Text("Cancled",
                          style: TextStyle(color: Colors.black))),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widget.index = 4;
                          widget.buttonColor4 =
                              Colors.red; // Change color to blue
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            widget.index == 4 ? Colors.red : Colors.grey,
                      ),
                      child: Text("in progress",
                          style: TextStyle(color: Colors.black))),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: TextField(
                  obscureText: widget._obscureText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Enter password",
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: IconButton(
                      icon: Icon(widget._toggleIcon),
                      onPressed: () {
                        setState(() {
                          widget._obscureText = !widget._obscureText;
                          widget._toggleIcon = widget._obscureText
                              ? Icons.visibility_off
                              : Icons.visibility;
                        });
                      },
                    ),
                  ))),
        ],
      ),
    ));
  }
}
