import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc_state.dart';
import '../bloc/my_bloc.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLoc State Manage"),
      ),
      body: Center(
        child: Container(
          child: BlocConsumer<MyBloc, InternetState>(
              listener: (context,state){
                if(state is InternetConnectState){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Connected"),backgroundColor: Colors.green,)
                  );
                }
                else if(state is InternetNotConnectState){
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Not Connected"),backgroundColor: Colors.red,)
                  );
                }
              },
            builder: (context, state) {
              if(state is InternetConnectState) {
                return const Text("Connected");
              }
              else if(state is InternetNotConnectState){
                return const Text("Not Connected");
              }
              else {
                return const Text("Loading...");
              }
            },
          ),
        ),
      ),
    );
  }
}
