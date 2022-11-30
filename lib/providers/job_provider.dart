import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:job_app/model/job_model/job.dart';
import 'package:job_app/shared_preferences.dart/user_preferences.dart';

import '../app_urls/app_urls.dart';
import '../data/network/networkapiservice.dart';

class jobProvider extends ChangeNotifier{


  final user_network = NetworkApiService();

  
    // final  token = UserPreferences().getToken();
    // List<dynamic> item = json.decode(response.body);
    //       List<JobCategory> responseData = item.map<JobCategory>((e) => JobCategory.fromJson(e)).toList();
    
  List<Jobs> jobResponseData =[];
  
  
  void getJobs()async{
    
    
    
    var token  = await UserPreferences().getToken();
    
     dynamic  data =await  NetworkApiService().getGetApiResponse(AppUrl.baseUrl+'/job/jobs/', token);
     
     List<dynamic> item = json.decode(data.body);
     List<Jobs> responseDat = item.map<Jobs>((e) => Jobs.fromJson(e)).toList();
     
     jobResponseData = responseDat;
    
    notifyListeners();
    }
    
}