import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_8/Cubits/ChangeUI/change_ui_cubit.dart';
import 'package:task_8/Cubits/ChangeUI/change_ui_cubit.dart';
import 'package:task_8/Cubits/CounterCubit/counter_cubit.dart';

class CounterScreen_with_cubid extends StatelessWidget {
  CounterScreen_with_cubid({super.key});

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
                  context.read<CounterCubit>().increament();
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: BlocBuilder<CounterCubit, CounterState>(
                  builder: (context, state) {
                    return Text(
                      context.read<CounterCubit>().counter.toString(),
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    );
                  },
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    backgroundColor: Colors.yellow),
                onPressed: () {
                  context.read<CounterCubit>().decreament();
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
          BlocBuilder<ChangeUiCubit, ChangeUiState>(
            builder: (context, state) {
              if (state is ShowText) {
                return Text("Hello ");
              } else if (state is ShowCircleImage) {
                return Image.asset(
                  "assets/images/circle.png",
                  width: 100,
                );
              } else if (state is ShowSquare) {
                return Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                  ),
                );
              } else {
                return Text("No Button clicked");
              }
            },
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
                context.read<ChangeUiCubit>().showtext();
              },
              child: Text("Show Text")),
          ElevatedButton(
              onPressed: () {
                context.read<ChangeUiCubit>().showCircle();
              },
              child: Text("Show Circle Image")),
          ElevatedButton(
              onPressed: () {
                context.read<ChangeUiCubit>().showSquare();
              },
              child: Text("Show Square")),
          ElevatedButton(
              onPressed: () {
                context.read<ChangeUiCubit>().reset();
              },
              child: Text("Reset")),
        ],
      )),
    );
  }
}
