

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:job_app/app_urls/app_urls.dart';
import 'package:job_app/data/network/networkapiservice.dart';
import 'package:job_app/model/job_model/job_category.dart';

import 'package:job_app/shared_preferences.dart/user_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StaffProvider extends ChangeNotifier{
  // final List<String> _items = ['item1','item2','item3','item4'];

  // get item => _items;
  //  setCurrentItems(List<String> _items){
  //   item = _items;
  //   notifyListeners();
  
  // }
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
     
    // return responseData;
    

  }
  //  Future<void> uploadImage ()async{

  //   setState(() {
  //     showSpinner = true ;
  //   });

  //   var stream  = new http.ByteStream(image!.openRead());
  //   stream.cast();

  //   var length = await image!.length();

  //   var uri = Uri.parse('https://fakestoreapi.com/products');

  //   var request = new http.MultipartRequest('POST', uri);

  //   request.fields['title'] = "Static title" ;

  //   var multiport = new http.MultipartFile(
  //       'image',
  //       stream,
  //       length);

  //   request.files.add(multiport);

  //   var response = await request.send() ;

  //   print(response.stream.toString());
  //   if(response.statusCode == 200){
  //     setState(() {
  //       showSpinner = false ;
  //     });
  //     print('image uploaded');
  //   }else {
  //     print('failed');
  //     setState(() {
  //       showSpinner = false ;
  //     });

  //   }

  // }

  Future<void> postJobCategory(String catName,File? imageUrl) async{
      final token = await UserPreferences().getToken();
    //   var stream  = new ByteStream(image!.openRead());
    // stream.cast();

    // var length = await image!.length();

    // var uri = Uri.parse((AppUrl.baseUrl+'/job/job-categories/'),body: body,headers:{                           
    //                                               "Content-Type": "application/json; charset=UTF-8" ,
                                                  
    //                                                   'Authorization': 'Bearer $token'});

    // var request = new MultipartRequest('POST', Uri.parse((AppUrl.baseUrl+'/job/job-categories/'),body: body,headers:{                           
    //                                               "Content-Type": "application/json; charset=UTF-8" ,
                                                  
    //                                                   'Authorization': 'Bearer $token'}));

    // request.fields['title'] = "Static title" ;
      var body = jsonEncode({
        'name' : catName,
        'image' :imageUrl,
      });
    try{
      Response response = await post(Uri.parse(AppUrl.baseUrl+'/job/job-categories/'),body: body,headers:{                           
                                                  "Content-Type": "application/json; charset=UTF-8" ,
                                                  
                                                      'Authorization': 'Bearer $token'} );
          final data = response.body;
          print(data);
          if(response.statusCode == 200){
            print('created ');
          }
    }catch(e){
      print(e.toString());
    }
  }
   
  // Future<List<JobCategory>> getAlljobCategory()async {
       
        

  //          var token  = await UserPreferences().getToken();
  //         // print(token);
       
  //       Response response = await get(Uri.parse(AppUrl.baseUrl+'/job/job-categories/'),headers:{                           
  //                                                 "Content-Type": "application/json; charset=UTF-8" ,
  //                                                 'Accept': 'application/json',
  //                                                     'Authorization': 'Bearer $token'} ,);
  //       if(response.statusCode ==200){
  //         List<dynamic> item = json.decode(response.body);
  //         List<JobCategory> responseData = item.map<JobCategory>((e) => JobCategory.fromJson(e)).toList();
  //         // print(responseData);
  //         // print(responseData.length);
  //         notifyListeners();
  //         // print(responseData);
  //         return responseData;
  //       }
  //       else{
  //         print('other things');
  //         return responseData;
  //       }
       
 

        
       
      
    }
   

  // void setUser(JobCategory category){
  //   _category = category;
  //   notifyListeners();

  // }
  // Future<Response>
