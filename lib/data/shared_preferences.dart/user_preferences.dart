




import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_model.dart';

// void updateSharedpreferences(int id,String token,String email,String password,bool email_confirmed) async{

// SharedPreferences _pref = await SharedPreferences.getInstance();

// _pref.setInt('id', id);
// _pref.setString('email',email);


// _pref.setString('token', token);

// }
class UserPreferences with ChangeNotifier{

  Future<bool> saveUser(User user)async{
    final SharedPreferences _pref = await SharedPreferences.getInstance();

    _pref.setString('email', user.email!);
    _pref.setInt('id', user.id!);
    _pref.setString('token', user.token!);
    _pref.setBool('is_staff', user.isStaff!);
    notifyListeners();
    return _pref.commit();

    

  }

  void removeUser() async{
    final SharedPreferences _pref = await SharedPreferences.getInstance();

    _pref.remove('email');
    _pref.remove('id');
    _pref.remove('token');
    _pref.remove('is_staff');
    notifyListeners();
    
  }
  Future<User> getUser() async{
    final SharedPreferences _pref = await SharedPreferences.getInstance();

    int? id = _pref.getInt('id');
    String? email = _pref.getString('email');
    String? token = _pref.getString('token');
    bool? is_staff  = _pref.getBool('is_staff');

    return User(
      email: email,
      id: id,
      token: token,
      isStaff: is_staff
    );

  }
  Future<String?> getToken() async{
    final SharedPreferences _pref = await SharedPreferences.getInstance();

    final token = _pref.getString('token');
    return token;
  }
}