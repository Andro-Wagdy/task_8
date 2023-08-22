import 'package:flutter/material.dart';
import 'package:task_8/Cubits/FastFilterBarCubit/fast_filter_bar_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_8/Cubits/TextFieldCubit/text_field_cubit.dart';

class Task_8_with_cubit extends StatelessWidget {
  const Task_8_with_cubit({super.key});

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
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey),
                      child: Text("Being Checked",
                          style: TextStyle(color: Colors.black))),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                      child: Text(
                        "Completed",
                        style: TextStyle(color: Colors.black),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                      child: Text("Cancled",
                          style: TextStyle(color: Colors.black))),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
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
              child: BlocBuilder<TextFieldCubit, TextFieldState>(
                builder: (context, state) {
                  return TextField(
                      obscureText: context.read<TextFieldCubit>().isObscure,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Enter password",
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            context.read<TextFieldCubit>().isObscure =
                                !context.read<TextFieldCubit>().isObscure;
                          },
                          child: context.read<TextFieldCubit>().ChangeIcon(),
                        ),
                      ));
                },
              )),
        ],
      ),
    ));
  }
}
