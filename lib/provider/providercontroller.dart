import 'package:flutter/cupertino.dart';

class ProviderController extends ChangeNotifier{
  bool isClick=false;
  onClick(){
    isClick=!isClick;
    notifyListeners();
  }

}