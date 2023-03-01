

import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier
{
  int i = 0;

  void add()
  {
    i++;
    notifyListeners();
  }

  void min()
  {
    i--;
    notifyListeners();
  }

  void twoX()
  {
    i =  i*2;
    notifyListeners();

  }
  void fourX()
  {
    i =  i*4;
    notifyListeners();

  }

}
