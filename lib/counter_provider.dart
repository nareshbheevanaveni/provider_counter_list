import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
  int _count =0;

  void incrementCount(){

    _count++;
    notifyListeners();
  }

  int getValue(){
   return _count;
  }
}