

  import 'package:flutter/cupertino.dart';

class CounterViewModel extends ChangeNotifier{
  int count =0;
  void increment(){
    count++;
    notifyListeners();
  }

  void decrement(){
    count--;
    notifyListeners();
  }
}