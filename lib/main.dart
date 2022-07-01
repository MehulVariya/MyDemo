import 'package:flutter/material.dart';
import 'package:myapp/ui/provider/page_provider.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "State Managment",
      home: ProviderPage(),
    );;
  }
}
