


import 'dart:convert';
import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:job_app/app_urls/app_urls.dart';
import 'package:job_app/data/network/networkapiservice.dart';
import 'package:job_app/model/advertisement.dart';
import 'package:job_app/model/job_model/job.dart';
import 'package:job_app/model/job_model/job_category.dart' as Jobca;

import 'package:job_app/shared_preferences.dart/user_preferences.dart';
import 'package:job_app/widgets/utlis.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StaffProvider extends ChangeNotifier{
  
  final user_network = NetworkApiService();
  List<JobCategory> catresponseData =[];

  
  bool isLoading = false;
  //  Future<List<JobCategory>>
  void getJobCategory()async{
    isLoading = true;
      var token = await UserPreferences().getToken();
      dynamic data = await user_network.getGetApiResponse(AppUrl.baseUrl+'/job/job-categories/', token);
      List<dynamic> item = json.decode(data.body);
      List<JobCategory> responseDat = item.map<JobCategory>((e) => JobCategory.fromJson(e)).toList();
    //  print(responseData);
    catresponseData = responseDat;
     isLoading = false;
    notifyListeners();
    
  }
  
  Future postJobCategory(BuildContext context,String catName,File? image) async{
      final token = await UserPreferences().getToken();
      var length = await image!.length();
      var stream  = new ByteStream(image.openRead());
    stream.cast();
    
    var uri = Uri.parse(AppUrl.baseUrl+'/job/job-categories/') ;
      var request  = new MultipartRequest('POST',uri );
      request.headers['Authorization']= 'Bearer $token';

      var multipartFile = new MultipartFile('image', stream, length,filename:image.path );
      request.fields['name'] = '$catName';
      request.files.add(multipartFile);
     
      var response = await request.send();
      print(response);
      if(response.statusCode==200){
        Navigator.pop(context);
        flushBarErrorMessage('$catName category created successfuly',context );
        
        // flushBarErrorMessage(message, context)
      }
      print(response.statusCode);
}


List<Jobs> jobResponseData =[];
  
  
  void getJobs()async{
    
    
    
    var token  = await UserPreferences().getToken();
    
     dynamic  data =await  NetworkApiService().getGetApiResponse(AppUrl.baseUrl+'/job/jobs/', token);
     
     List<dynamic> item = json.decode(data.body);
     List<Jobs> responseDat = item.map<Jobs>((e) => Jobs.fromJson(e)).toList();
     
     jobResponseData = responseDat;
    
    notifyListeners();
    }

    ////////////////////////////Advertisement\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    ///
    
  //  Future<List<Ads>>
  List<Ads> adsresponseData =[];
 void getAds()async{
    isLoading = true;
      var token = await UserPreferences().getToken();
      dynamic data = await user_network.getGetApiResponse(AppUrl.baseUrl+'/job/advertisement/', token);
      List<dynamic> item = json.decode(data.body);
      print(data);
      List<Ads> responseDat = item.map<Ads>((e) => Ads.fromJson(e)).toList();
    //  print(responseData);
    adsresponseData = responseDat;
     isLoading = false;
    notifyListeners();
    
  }
 }
   

