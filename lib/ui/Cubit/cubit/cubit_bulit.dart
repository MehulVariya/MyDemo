import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum InternetStateCubit{initial,gain,lost}

class MyCubit extends Cubit<InternetStateCubit>{
  var connection = Connectivity();
  MyCubit():super(InternetStateCubit.initial){
    connection.onConnectivityChanged.listen((result) {
      if(result == ConnectivityResult.mobile || result == ConnectivityResult.wifi){
        emit(InternetStateCubit.gain);
      }
      else {
        emit(InternetStateCubit.lost);
      }
    });
  }
}