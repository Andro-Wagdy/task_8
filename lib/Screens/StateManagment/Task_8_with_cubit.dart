import 'package:flutter/material.dart';
import 'package:task_8/Cubits/FastFilterBarCubit/fast_filter_bar_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_8/Cubits/RadioCubit/radio_cubit.dart';
import 'package:task_8/Cubits/TextFieldCubit/text_field_cubit.dart';

class Task_8_with_cubit extends StatelessWidget {
  Task_8_with_cubit({super.key});
  List<String> filterbar = [
    "Being Checked",
    "Completed",
    "cancled",
    "in progress"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<FastFilterBarCubit, FastFilterBarState>(
                builder: (context, state) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < filterbar.length; i++)
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    context
                                        .read<FastFilterBarCubit>()
                                        .changecolor(i);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: context
                                                  .read<FastFilterBarCubit>()
                                                  .selectedindex ==
                                              i
                                          ? Colors.red
                                          : Colors.grey),
                                  child: Text(filterbar[i],
                                      style: TextStyle(color: Colors.black))),
                            ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 25,
              ),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: BlocBuilder<TextFieldCubit, TextFieldState>(
                    builder: (context, state) {
                      return TextField(
                          obscureText: context.read<TextFieldCubit>().isobscure,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            hintText: "Enter password",
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: IconButton(
                              icon: context.read<TextFieldCubit>().isShown
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                              onPressed: () {
                                context.read<TextFieldCubit>().showhidepass();
                              },
                            ),
                          ));
                    },
                  )),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.black,
                thickness: 2,
              ),
              Expanded(
                child: BlocBuilder<RadioCubit, RadioState>(
                  builder: (context, state) {
                    return ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return RadioListTile(
                          value: index,
                          groupValue: context.read<RadioCubit>().currentvalue,
                          onChanged: (value) {
                            context.read<RadioCubit>().currentvalue = value!;
                            context.read<RadioCubit>().toggleRadio();
                          },
                          title: Text("Title${index + 1}"),
                          subtitle: Text("text"),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
