import 'package:flutter/cupertino.dart';

import '../model/user_model.dart';


class UserProvider extends ChangeNotifier{

  User  _user = new User();

  User get user=>_user;

  void setUser(User user){
    _user = user;
    notifyListeners();

  }
}