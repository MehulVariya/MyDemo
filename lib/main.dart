import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/ui/Cubit/Screen/cubit_page.dart';
import 'package:myapp/ui/Cubit/cubit/cubit_bulit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "State Management",
        home: CubitPage(),
      ),
    );;
  }
}
