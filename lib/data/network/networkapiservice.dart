
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:job_app/data/app_exception/app_exceptions.dart';

import 'package:http/http.dart' as http;
import 'package:job_app/widgets/utlis.dart';

import 'baseapiservice.dart';

class NetworkApiService extends BaseApiServices {


  @override
  Future<Response> getGetApiResponse(String url,dynamic token) async {

    Response responseJson ;
    try {

      final response = await http.get(Uri.parse(url),headers: {                           
       "Content-Type": "application/json; charset=UTF-8" ,
       'Accept': 'application/json',
           'Authorization': 'Bearer $token',
       });
      // responseJson = response;
      responseJson = returnResponse(response);
    }on SocketException {
      
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;

  }


  @override
  Future<Response> getPostApiResponse(String url , dynamic data) async{

    dynamic responseJson ;
    try {

      Response response = await post(
        Uri.parse(url),
        body: data
      );

      responseJson = returnResponse(response);
    }on SocketException {

      throw FetchDataException('No Internet Connection');
    }

    return responseJson ;
  }

   dynamic returnResponse (http.Response response){

    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return response ;
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

}