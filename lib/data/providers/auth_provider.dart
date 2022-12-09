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

import '../model/user_model.dart';
import '../shared_preferences.dart/user_preferences.dart';



class AuthProvider extends ChangeNotifier{

 

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
  
  Future<void> userLogin(BuildContext context,String email,String password) async{
    var body = jsonEncode({'email': email, 'password': password});
    setLoading(true);
    
    notifyListeners();
    try{
      Response  response = await post(Uri.parse(AppUrl.loginEndPint),body: body,headers: headers);
    // print(response.body );
    var verify = jsonDecode(response.body);
    print(verify);
    print(response.statusCode);

    if(response.statusCode ==400){
      setLoading(false);
      notifyListeners();
      snackBar('Incorrect Password', context);
    }
    if(response.statusCode ==401){
      setLoading(false);
      notifyListeners();
      flushBarErrorMessage('email not verified ', context);
    }
    if (response.statusCode==200){
      
      setLoading(false);
      var data = response.body;
      
      User user = User.fromReqBody(data);
      print(user.id);
      user.email = email;
      
      
      UserPreferences().saveUser(user);
     
      notifyListeners();
      if(user.isStaff!=true){
        context.navigateNamedTo('/home');
      }
      else{
        context.navigateNamedTo('/staffhome');
        
        
      }
      
      
    }
   
    }catch (e){
      flushBarErrorMessage(e.toString(), context);
    }
    
    
    
    
    
    
    

  }
  
 
  
  Future<void> userSignup(BuildContext context,String email,String password,String confirmpassword) async{
    var body = jsonEncode({
      'email':email,
      'password':password,
      'confirm_password':confirmpassword
    });
    setSignUpLoading(true);
    
    notifyListeners();
    try{
      Response response = await post(Uri.parse(AppUrl.baseUrl+'/signup/'),headers: headers,
    body: body
    );
      var responsebody = response.body;
      // responsebody['']
      var mssg = jsonDecode(responsebody);
      print(mssg['non_field_errors']);
      print(responsebody.contains("non_field_errors"));
      print(response.statusCode);
      if(response.statusCode ==400){
        setSignUpLoading(false);
        notifyListeners();
       
        flushBarErrorMessage('account already present plesase verify you account to continue', context);
        
      }
      if(response.statusCode==200){
        setSignUpLoading(false);
        
        notifyListeners();
        flushBarErrorMessage('Verify your email before login', context);
        Timer(Duration(seconds: 2),()=>context.router.replaceNamed ('/login'));
        
        
      }
      
    } on SocketException{
      setSignUpLoading(false);
      flushBarErrorMessage('NO Internet connection', context);
    }

    
    
  
  
  }

  Future<void> forgotPassword(BuildContext context,String email) async{
    var body =jsonEncode({'email':email});
    try{
      setLoading(true);
      notifyListeners();
      Response response = await post(Uri.parse(AppUrl.resetPassword),body: body,headers: headers);
      print(response);
      var data = response.body;
      print(data);
      if(response.statusCode==201){
        setLoading(false);
        notifyListeners();
        flushBarErrorMessage(data, context);
        Timer(Duration(seconds: 2),()=>context.navigateNamedTo('/forgot-password-verify'));
        
        
      }
     
    }catch (e){
      flushBarErrorMessage(e.toString(), context);
    }
    
    

  }
  Future<void> resetPasswordVerify(BuildContext context,String password, code)async{
    var body = jsonEncode({
      
      'new_password':password,
      'reset_code':code,
    });
    setLoading(true);
      notifyListeners();
    print(body);
    try{
      Response response = await post(Uri.parse(AppUrl.resetPasswordVerify),body: body,headers: headers);
      print(response.body);
      if(response.statusCode==200){
        setLoading(false);
      notifyListeners();
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