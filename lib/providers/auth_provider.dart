import 'dart:async';
import 'dart:convert';
import 'dart:io';


import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:job_app/app_urls/app_urls.dart';
import 'package:job_app/screens/home.dart';
import 'package:job_app/widgets/utlis.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/app_exception/app_exceptions.dart';
import '../model/user_model.dart';
import '../shared_preferences.dart/user_preferences.dart';

enum Status{
  NotLoggedIn,
  NotRegistered,
  LoggedIn,
  Registered,
  Authenticating,
  Registering,
  LoggedOut,



}

class AuthProvider extends ChangeNotifier{

  Status _LoggedInstatus = Status.NotLoggedIn;

  Status _Registeredstatus = Status.NotRegistered;

  get LoggedInStatus => _LoggedInstatus;
  get RegisteredStatus => _Registeredstatus;

  bool _loading = false ;
  bool get loading => _loading ;

  bool _signUpLoading = false ;
  bool get signUpLoading => _signUpLoading ;


  setLoading(bool value){
    _loading = value;
    notifyListeners();
  }

  setSignUpLoading(bool value){
    _signUpLoading = value;
    notifyListeners();
  }

  
  
  Map<String,String> headers = {                           
       "Content-Type": "application/json; charset=UTF-8" };  
  
  Future userLogin(BuildContext context,String email,String password) async{
    var body = jsonEncode({'email': email, 'password': password});
    setLoading(true);
    _LoggedInstatus = Status.Authenticating;
    notifyListeners();
    try{
      Response  response = await post(Uri.parse(AppUrl.loginEndPint),body: body,headers: headers);
    // print(response.body );
    var verify = jsonDecode(response.body);
    print(verify);

    
    if(response.statusCode ==401){
      setLoading(false);
      notifyListeners();
      flushBarErrorMessage('email not verified ', context);
    }
    if (response.statusCode==200){
      
      setLoading(false);
      var data = response.body;
      
      User user = User.fromReqBody(data);
      user.email = email;
      
      
      UserPreferences().saveUser(user);
      
      _LoggedInstatus = Status.LoggedIn;
      notifyListeners();
      if(user.isStaff!=true){
        context.navigateNamedTo('/home');
      }
      else{
        context.navigateNamedTo('/staffhome');
        
        
      }
      
      
    }
    return response;
    }catch (e){
      flushBarErrorMessage(e.toString(), context);
    }
    
    
    
    
    
    
    

  }
  
  dynamic returnResponse (Response response){

    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson ;
      case 400:
        throw BadRequestException(response.body.toString());
      case 500:
      case 404:
        throw UnauthorisedException(response.body.toString());
      default:
        throw FetchDataException('Error accured while communicating with server'+
            'with status code' +response.statusCode.toString());

    }
  }
  
  Future userSignup(BuildContext context,String email,String password,String confirmpassword) async{
    var body = jsonEncode({
      'email':email,
      'password':password,
      'confirm_password':confirmpassword
    });
    setSignUpLoading(true);
    _Registeredstatus = Status.Registering;
    notifyListeners();
    try{
      Response response = await post(Uri.parse(AppUrl.baseUrl+'signup/'),headers: headers,
    body: body
    );
      var responsebody = response.body;
      if(response.statusCode ==400){
        setSignUpLoading(false);
        notifyListeners();
        flushBarErrorMessage('account already present plesase verify you account to continue', context);
        print('400');
      }
      if(response.statusCode==200){
        setSignUpLoading(false);
        _Registeredstatus=Status.Registered;
        notifyListeners();
        
        context.navigateNamedTo('/login');
        flushBarErrorMessage('Verify your email before login', context);
      }
      return responsebody;
    } on SocketException{

      throw FetchDataException('No internet Connection');
    }

    
    
  
  
  }

  Future forgotPassword(BuildContext context,String email) async{
    var body =jsonEncode({'email':email});
    try{

      Response response = await post(Uri.parse(AppUrl.resetPassword),body: body,headers: headers);
      print(response);
      var data = response.body;
      print(data);
      if(response.statusCode==201){
        
        flushBarErrorMessage(data, context);
        Timer(Duration(seconds: 2),()=>context.navigateNamedTo('/forgot-password-verify'));
        
        
      }
      return response;
    }catch (e){
      flushBarErrorMessage(e.toString(), context);
    }
    
    

  }
  Future resetPasswordVerify(BuildContext context,String password, code)async{
    var body = jsonEncode({
      
      'new_password':password,
      'reset_code':code,
    });
    print(body);
    try{
      Response response = await post(Uri.parse(AppUrl.resetPasswordVerify),body: body,headers: headers);
      print(response.body);
      if(response.statusCode==200){
        print('password set successsfuly ');
        flushBarErrorMessage(response.body+'\n login to continue..', context);
        Timer(Duration(seconds: 2), (){
          context.navigateNamedTo('/login');
        });
      }

    }catch (e){
      flushBarErrorMessage(e.toString(), context);
    }

  }

}