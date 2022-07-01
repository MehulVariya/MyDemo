import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ProviderClass.dart';

class ProviderPage extends StatefulWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  State<ProviderPage> createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
      ),
      body: Center(
        child: ChangeNotifierProvider<MyProvider>(
          create: (context) => MyProvider(),
          child: Consumer<MyProvider>(
            builder: (context, provider, widget) {
              return Column(
                children: [
                  const Text("What is your name"),
                  Text("My name is ${provider.name}"),
                  ElevatedButton(
                      onPressed: () => provider.data(), child: const Text("Click"))
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
