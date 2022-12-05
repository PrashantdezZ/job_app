import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  

  @override
  void initState(){
    Timer(Duration(seconds: 1),()=>getUser());
    super.initState();
  }
    getUser()async{
    

    SharedPreferences preferences = await SharedPreferences.getInstance();
    // print(preferences.getString('email'));
    var email = preferences.getString('email');
    bool? is_staff = preferences.getBool('is_staff');
    if(email!=null && is_staff ==true){
     context.navigateNamedTo('/staffhome');
     
    }
    else if (email!=null && is_staff ==false ){

      context.navigateNamedTo('/home');
     
    }
    else if (email == null && is_staff ==null){
        context.navigateNamedTo('/login');
    }
    
  } 

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Image.asset('assets/images/splash.jpg')
      
    );

    
  }
}