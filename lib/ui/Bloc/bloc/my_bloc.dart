import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/ui/Bloc/bloc/bloc_events.dart';
import 'package:myapp/ui/Bloc/bloc/bloc_state.dart';

class MyBloc extends Bloc<InternetEvent,InternetState>{

  final Connectivity _connectivity = Connectivity();

  MyBloc() : super(InitialState()){
    on<InternetGainEvent>((event, emit) => emit(InternetConnectState()));
    on<InternetLostEvent>((event, emit) => emit(InternetNotConnectState()));

    _connectivity.onConnectivityChanged.listen((result) {

      if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi){
        add(InternetGainEvent());
      }
      else{
        add(InternetLostEvent());
      }

    });
  }



}