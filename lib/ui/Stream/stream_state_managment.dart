import 'dart:async';

import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    StreamController<int> controller = StreamController();
    int number = 0 ;
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: StreamBuilder(
          stream: controller.stream,
          builder: (context,snapshot){
            if(snapshot.hasError){return const Text("Same Error");}
            else if(snapshot.connectionState == ConnectionState.waiting){return CircularProgressIndicator();}
            return Text("Number Is ${snapshot.data}");
          },
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()async{
        for(int i = 0 ; i < 5 ;i++) {
          await Future.delayed(const Duration(seconds: 1));
         //controller.sink.add(i);
        }},
      child: Icon(Icons.back_hand),),
    );
  }
}
