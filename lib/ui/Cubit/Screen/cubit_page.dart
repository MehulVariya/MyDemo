import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/ui/Cubit/cubit/cubit_bulit.dart';

class CubitPage extends StatelessWidget {
  const CubitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLoc State Manage"),
      ),
      body: Center(
        child: Container(
          child: BlocConsumer<MyCubit, InternetStateCubit>(
            listener: (context,state){
              if(state == InternetStateCubit.gain){
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Connected"),backgroundColor: Colors.green,)
                );
              }
              else if(state == InternetStateCubit.lost){
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Not Connected"),backgroundColor: Colors.red,)
                );
              }
            },
            builder: (context, state) {
              if(state == InternetStateCubit.gain) {
                return const Text("Connected");
              }
              else if(state == InternetStateCubit.lost){
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
