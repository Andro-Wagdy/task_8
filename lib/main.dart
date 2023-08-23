import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_8/Cubits/ChangeUI/change_ui_cubit.dart';
import 'package:task_8/Cubits/CounterCubit/counter_cubit.dart';
import 'package:task_8/Cubits/FastFilterBarCubit/fast_filter_bar_cubit.dart';
import 'package:task_8/Cubits/RadioCubit/radio_cubit.dart';
import 'package:task_8/Cubits/TextFieldCubit/text_field_cubit.dart';
import 'package:task_8/Screens/StateManagment/CounterScreen_with_cubid.dart';
import 'package:task_8/Screens/StateManagment/Task_8_with_cubit.dart';
import 'package:task_8/Screens/StateManagment/task_setstate.dart';
import 'package:task_8/Screens/StateManagment/CounterScreen_setstate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterCubit>(
            create: (BuildContext context) => CounterCubit()),
        BlocProvider<ChangeUiCubit>(
            create: (BuildContext context) => ChangeUiCubit()),
        BlocProvider<FastFilterBarCubit>(
            create: (BuildContext context) => FastFilterBarCubit()),
        BlocProvider<TextFieldCubit>(
            create: (BuildContext context) => TextFieldCubit()),
        BlocProvider<RadioCubit>(
            create: (BuildContext context) => RadioCubit()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: Task_8_with_cubit()),
    );
  }
}
