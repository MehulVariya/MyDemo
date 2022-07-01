import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{

  String ?name;

  void data(){
    name = "Mehul";
    notifyListeners();
  }
}