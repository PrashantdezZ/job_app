

import 'dart:convert';
import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:job_app/app_urls/app_urls.dart';
import 'package:job_app/data/network/networkapiservice.dart';
import 'package:job_app/data/model/usermodels/certification.dart';
import 'package:job_app/data/model/usermodels/education.dart';
import 'package:job_app/data/model/usermodels/experience.dart';
import 'package:job_app/data/model/usermodels/interest.dart';
import 'package:job_app/data/model/usermodels/language.dart';
import 'package:job_app/data/model/usermodels/skill.dart';
import 'package:job_app/data/shared_preferences.dart/user_preferences.dart';
import 'package:job_app/widgets/utlis.dart';


class UserData extends ChangeNotifier{


  final user_network = NetworkApiService();
  List<Experience> expResponseData =[];
  
  
  void getUserExperience()async{
    
    
    
    var token  = await UserPreferences().getToken();
    
     dynamic  data =await  NetworkApiService().getGetApiResponse(AppUrl.baseUrl+'/job/experience/', token);
     
     List<dynamic> item = json.decode(data.body);
     List<Experience> responseDat = item.map<Experience>((e) => Experience.fromJson(e)).toList();
     expResponseData = responseDat;
    
    notifyListeners();
    }
    
    
    Future postUserExperience(String title,String description,File image) async{
      
    final  user  = await UserPreferences().getUser();
      
      var length = await image.length();
    print(length);
    var stream = new ByteStream(image.openRead());
    stream.cast();
      final token =  user.token;
      final user_id = user.id;
      print(user_id);
      print(token);
    var uri = Uri.parse(AppUrl.baseUrl+'/job/experience/') ;
     var request  = new MultipartRequest('POST', uri);
     request.headers['Authorizaton'] = 'Bearer $token';
     var multipartfile  =new MultipartFile('experience_letter', stream, length,filename: image.path);

      request.fields['title'] = '$title';

      request.fields['description'] = '$description'; 
      request.fields['from_date'] = '2022-12-12';
      request.fields['to_date'] = '2023-11-12';
      request.fields['user'] = '$user_id';
      request.files.add(multipartfile);
      var response = await request.send();
     print(response.statusCode);
      
      
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
   
    Future<void> postEducation(BuildContext context,String title,String description,String passed_year)async{
      final  user  = await UserPreferences().getUser();
      print(user.token);
      print(user.id);
      final token = user.token;
      final user_id = user.id;
      var body =jsonEncode({
        'title' : title,
        'description' :description,
        'passed_year': passed_year,
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
            flushBarErrorMessage('Education Added', context);
            print('created ');
          }
      }catch(e){
        print(e.toString());
      }

    
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
    
    
    Future<void> postLanguage(String title,BuildContext context)async{
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
            flushBarErrorMessage('skill added', context);
            print('created ');
          }
      }catch(e){
        print(e.toString());
      }

      return response;
    }
    

    List<Skill> skillResponseData =[];
  /////////////////////////////////////////////////Skill\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  
  
  void getSkill()async{
    
    
    
    var token  = await UserPreferences().getToken();
    
     dynamic  data =await  NetworkApiService().getGetApiResponse(AppUrl.baseUrl+'/job/skill/', token);
     
     List<dynamic> item = json.decode(data.body);
     List<Skill> responseDat = item.map<Skill>((e) => Skill.fromJson(e)).toList();
     skillResponseData = responseDat;
    
    notifyListeners();
    }
    
    Future<void> postSkill(String title,BuildContext context)async{
      final  user  = await UserPreferences().getUser();
      
      final token = user.token;
      final user_id = user.id;
      
      
      var body =jsonEncode({
        'skill' : title,
        
        'user':user_id,
      });
      dynamic response;


      try{
          Response response = await post(Uri.parse(AppUrl.baseUrl+'/job/skill/'),body: body,headers:{                           
                                                  "Content-Type": "application/json; charset=UTF-8" ,
                                                  
                                                      'Authorization': 'Bearer $token'} );
          final data = response.body;
          print(data);
          print(response.statusCode);
          if(response.statusCode == 200){
            flushBarErrorMessage('skill added', context);
            // Navigator.of(context).pop();
           
            print('created ');
          }
      }catch(e){
        print(e.toString());
      }

     
    }

}