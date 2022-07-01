import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/ui/Bloc/bloc/my_bloc.dart';
import 'package:myapp/ui/Bloc/screen/bloc_page.dart';
import 'package:myapp/ui/provider/page_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "State Management",
        home: BlocPage(),
      ),
    );;
  }
}
