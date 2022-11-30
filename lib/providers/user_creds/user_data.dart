

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:job_app/app_urls/app_urls.dart';
import 'package:job_app/data/network/networkapiservice.dart';
import 'package:job_app/model/usermodels/certification.dart';
import 'package:job_app/model/usermodels/education.dart';
import 'package:job_app/model/usermodels/experience.dart';
import 'package:job_app/model/usermodels/interest.dart';
import 'package:job_app/model/usermodels/language.dart';
import 'package:job_app/model/usermodels/skill.dart';
import 'package:job_app/shared_preferences.dart/user_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserData extends ChangeNotifier{


  final user_network = NetworkApiService();

  
    // final  token = UserPreferences().getToken();
    // List<dynamic> item = json.decode(response.body);
    //       List<JobCategory> responseData = item.map<JobCategory>((e) => JobCategory.fromJson(e)).toList();
    
  List<Experience> expResponseData =[];
  
  
  void getUserExperience()async{
    
    
    
    var token  = await UserPreferences().getToken();
    
     dynamic  data =await  NetworkApiService().getGetApiResponse(AppUrl.baseUrl+'/job/experience/', token);
     
     List<dynamic> item = json.decode(data.body);
     List<Experience> responseDat = item.map<Experience>((e) => Experience.fromJson(e)).toList();
     expResponseData = responseDat;
    
    notifyListeners();
    }
    
    
    Future<Response> postUserExperience(String title,String description,DateTime from_date,DateTime to_date,String letter) async{
      final  user  = await UserPreferences().getUser();
      print(user.token);
      print(user.id);
      final token = user.token;
      final user_id = user.id;
      var body =jsonEncode({
        'title' : title,
        'description' :description,
        'from_date': from_date,
        'to_date': to_date,
        'experience_letter_url' : letter,
        'user':user_id
      });
      dynamic response;


      try{
          Response response = await post(Uri.parse(AppUrl.baseUrl+'/job/experience/'),body: body,headers:{                           
                                                  "Content-Type": "application/json; charset=UTF-8" ,
                                                  'Accept': 'application/json',
                                                      'Authorization': 'Bearer $token'} );
          final data = response.body;
          print(data);
          if(response.statusCode == 200){
            print('created ');
          }
      }catch(e){
        print(e.toString());
      }

      return response;



    }
    
    
  List<Certification> CerResponseData =[];
  
  
  void getCertification()async{
    
    
    
    var token  = await UserPreferences().getToken();
    
     dynamic  data =await  NetworkApiService().getGetApiResponse(AppUrl.baseUrl+'/job/certification/', token);
     
     List<dynamic> item = json.decode(data.body);
     List<Certification> responseDat = item.map<Certification>((e) => Certification.fromJson(e)).toList();
     CerResponseData = responseDat;
    
    notifyListeners();
    }
   
    Future<Response> postCertification(String title,int year,String certificate_url,String description)async{

      final  user  = await UserPreferences().getUser();
      print(user.token);
      print(user.id);
      final token = user.token;
      final user_id = user.id;
      var body =jsonEncode({
        'title' : title,
        'completed_year' :year,
        'certificate_url': certificate_url,
        'description': description,
        
        'user':user_id
      });
      dynamic response;


      try{
          Response response = await post(Uri.parse(AppUrl.baseUrl+'/job/certification/'),body: body,headers:{                           
                                                  "Content-Type": "application/json; charset=UTF-8" ,
                                                  'Accept': 'application/json',
                                                      'Authorization': 'Bearer $token'} );
          final data = response.body;
          print(data);
          if(response.statusCode == 200){
            print('created ');
          }
      }catch(e){
        print(e.toString());
      }

      return response;

    }
        /////<<<<<<<<<<<<<<<<<<<<<<<<<<<Education>>>>>>>>>>>>>>>>>>>>>>>>>>>\\\\\\\\\\\\\\\\\\\\\\
        ///
      List<Education> EduResponseData =[];
  
  
  void getEducation()async{
    
    
    
    var token  = await UserPreferences().getToken();
    
     dynamic  data =await  NetworkApiService().getGetApiResponse(AppUrl.baseUrl+'/job/education/', token);
     
     List<dynamic> item = json.decode(data.body);
     List<Education> responseDat = item.map<Education>((e) => Education.fromJson(e)).toList();
     EduResponseData = responseDat;
    
    notifyListeners();
    }
   
    Future<Response> postEducation(String title,String description,int year)async{
      final  user  = await UserPreferences().getUser();
      print(user.token);
      print(user.id);
      final token = user.token;
      final user_id = user.id;
      var body =jsonEncode({
        'title' : title,
        'description' :description,
        'passed_year': year,
        'user':user_id
      });
      dynamic response;


      try{
          Response response = await post(Uri.parse(AppUrl.baseUrl+'/job/education/'),body: body,headers:{                           
                                                  "Content-Type": "application/json; charset=UTF-8" ,
                                                  'Accept': 'application/json',
                                                      'Authorization': 'Bearer $token'} );
          final data = response.body;
          print(data);
          if(response.statusCode == 200){
            print('created ');
          }
      }catch(e){
        print(e.toString());
      }

      return response;
    }


    /////////////////////////////////////Interest\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    List<Interest> IntResponseData =[];
  
  
  void getInterest()async{
    
    
    
    var token  = await UserPreferences().getToken();
    
     dynamic  data =await  NetworkApiService().getGetApiResponse(AppUrl.baseUrl+'/job/interest/', token);
     
     List<dynamic> item = json.decode(data.body);
     List<Interest> responseDat = item.map<Interest>((e) => Interest.fromJson(e)).toList();
     IntResponseData = responseDat;
    
    notifyListeners();
    }
    // Future<Response> getInterest()async{
    //   dynamic response;
    //     try{

    //        var token  = await UserPreferences().getToken();
    //       print(token);
       
    //     Response response = await get(Uri.parse(AppUrl.baseUrl+'/job/interest/'),headers:{                           
    //                                               "Content-Type": "application/json; charset=UTF-8" ,
    //                                               'Accept': 'application/json',
    //                                                   'Authorization': 'Bearer $token'} ,);
    //     var data = response.body;
    //     print(response.body);

    //     }catch(e){
    //       print(e.toString());
    //     }
    //   return response;
    // }
    Future<Response> postInterest(String title)async{
      final  user  = await UserPreferences().getUser();
      print(user.token);
      print(user.id);
      final token = user.token;
      final user_id = user.id;
      var body =jsonEncode({
        'title' : 'title',
        
        'user':user_id
      });
      dynamic response;


      try{
          Response response = await post(Uri.parse(AppUrl.baseUrl+'/job/interest/'),body: body,headers:{                           
                                                  "Content-Type": "application/json; charset=UTF-8" ,
                                                  'Accept': 'application/json',
                                                      'Authorization': 'Bearer $token'} );
          final data = response.body;
          print(data);
          if(response.statusCode == 200){
            print('created ');
          }
      }catch(e){
        print(e.toString());
      }

      return response;
    }
   //////////////////////////////////////Language\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
   List<Language> lanResponseData =[];
  
  
  void getLanguage()async{
    
    
    
    var token  = await UserPreferences().getToken();
    
     dynamic  data =await  NetworkApiService().getGetApiResponse(AppUrl.baseUrl+'/job/language/', token);
     
     List<dynamic> item = json.decode(data.body);
     List<Language> responseDat = item.map<Language>((e) => Language.fromJson(e)).toList();
     lanResponseData = responseDat;
    
    notifyListeners();
    }
    // Future<Response> getLanguage()async{
    //   dynamic response;
    //     try{

    //        var token  = await UserPreferences().getToken();
    //       print(token);
       
    //     Response response = await get(Uri.parse(AppUrl.baseUrl+'/job/language/'),headers:{                           
    //                                               "Content-Type": "application/json; charset=UTF-8" ,
    //                                               'Accept': 'application/json',
    //                                                   'Authorization': 'Bearer $token'} ,);
    //     var data = response.body;
    //     print(response.body);

    //     }catch(e){
    //       print(e.toString());
    //     }
    //   return response;

    // }
    Future<Response> postLanguage(String title)async{
      final  user  = await UserPreferences().getUser();
      print(user.token);
      print(user.id);
      final token = user.token;
      final user_id = user.id;
      var body =jsonEncode({
        'title' : 'title',
         
        'user':user_id
      });
      dynamic response;


      try{
          Response response = await post(Uri.parse(AppUrl.baseUrl+'/job/language/'),body: body,headers:{                           
                                                  "Content-Type": "application/json; charset=UTF-8" ,
                                                  'Accept': 'application/json',
                                                      'Authorization': 'Bearer $token'} );
          final data = response.body;
          print(data);
          if(response.statusCode == 200){
            print('created ');
          }
      }catch(e){
        print(e.toString());
      }

      return response;
    }
    
    
    List<Skill> skillResponseData =[];
  
  
  void getSkill()async{
    
    
    
    var token  = await UserPreferences().getToken();
    
     dynamic  data =await  NetworkApiService().getGetApiResponse(AppUrl.baseUrl+'/job/skill/', token);
     
     List<dynamic> item = json.decode(data.body);
     List<Skill> responseDat = item.map<Skill>((e) => Skill.fromJson(e)).toList();
     skillResponseData = responseDat;
    
    notifyListeners();
    }
    // Future<Response> getSkill()async{
    //   dynamic response;
    //     try{

    //        var token  = await UserPreferences().getToken();
    //       print(token);
       
    //     Response response = await get(Uri.parse(AppUrl.baseUrl+'/job/skill/'),headers:{                           
    //                                               "Content-Type": "application/json; charset=UTF-8" ,
    //                                               'Accept': 'application/json',
    //                                                   'Authorization': 'Bearer $token'} ,);
    //     var data = response.body;
    //     print(response.body);

    //     }catch(e){
    //       print(e.toString());
    //     }
    //   return response;
    // }
    Future<Response> postSkill(String title)async{
      final  user  = await UserPreferences().getUser();
      print(user.token);
      print(user.id);
      final token = user.token;
      final user_id = user.id;
      var body =jsonEncode({
        'title' : 'title',
        
        'user':user_id
      });
      dynamic response;


      try{
          Response response = await post(Uri.parse(AppUrl.baseUrl+'/job/skill/'),body: body,headers:{                           
                                                  "Content-Type": "application/json; charset=UTF-8" ,
                                                  'Accept': 'application/json',
                                                      'Authorization': 'Bearer $token'} );
          final data = response.body;
          print(data);
          if(response.statusCode == 200){
            print('created ');
          }
      }catch(e){
        print(e.toString());
      }

      return response;
    }

}