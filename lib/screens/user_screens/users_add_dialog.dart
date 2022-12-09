

import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/data/providers/user_creds/staff_provider.dart';
import 'package:job_app/data/providers/user_creds/user_data.dart';
import 'package:job_app/data/shared_preferences.dart/user_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


void addskillDialog(BuildContext ctx){
  // final List<String> option = [
  //   'Accounting and Finance',
  //   'Banking / Financial',
  //   'Choreographer',
  //   'Modelling',
  //   'Audio & Video Recording',
  //   'Public Relation / Advertising',
  //   'Administrative / Management',
  //   'Consulting & Professional Services',
  // ];
  TextEditingController title = TextEditingController();
  // void dispose(){
  //   title.clear();
  // }
  
  File? files ;
  Size size  = MediaQuery.of(ctx).size;
 
 showDialog(
                context: (ctx),
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    scrollable: true,
                    title: Text('Add Skill',style: TextStyle(color: Palette.lightPurple,fontSize: 
                              22,fontWeight: FontWeight.bold),),
                              
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                             
                              Container(
                          alignment: Alignment.center,
                          height: 45,
                          padding: EdgeInsets.only(left: 4,right: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,0),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.15),
                            
                                          )
                                        ]
                          ),
                          child:TextFormField(
                                        controller: title,
                                        // controller: _nameController,
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(0.76),
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            // labelText:'Product ' ,
                                            // floatingLabelAlignment: FloatingLabelAlignment.start,
                                            // // floatingLabelBehavior: FloatingLabelBehavior.always,
                                            // labelStyle: TextStyle(color: Palette.lightPurple,fontSize: 19),
                                            hintText: 'Product Name',
                                            
                                            hintStyle: TextStyle(
                                              color: Colors.black .withOpacity(0.6),
                                            ),
                                           
                                            
                                            enabled: true,
                                            contentPadding: const EdgeInsets.only(
                                                left: 14.0, bottom: 8.0, top: 8.0),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: new BorderSide(color: Colors.transparent),
                                              borderRadius: new BorderRadius.circular(29),
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: new BorderSide(color: Colors.transparent),
                                              borderRadius: new BorderRadius.circular(29),
                                            ),
                                          ),
                                      ),
                                       
                        ),
                        SizedBox(height: 12,),
                          
                            ],
                          ),
                        ),
                      ),
                    ),
                    actions: [
                      ElevatedButton(onPressed: (){
                           
                             Provider.of<UserData>(context,listen: false).postSkill(title.text.toString(),ctx);
                             
                            },
                           child: Text('Add '))
                              
                    ], 
                  );
                });


}


void addLanguageDialog(BuildContext ctx){
  
  TextEditingController language = TextEditingController();
  // void dispose(){
  //   title.clear();
  // }
  
  File? files ;
  Size size  = MediaQuery.of(ctx).size;
 
 showDialog(
                context: (ctx),
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    scrollable: true,
                    title: Text('   Add Language',style: TextStyle(color: Palette.lightPurple,fontSize: 
                              22,fontWeight: FontWeight.bold),),
                              
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              
                              Container(
                          alignment: Alignment.center,
                          height: 45,
                          padding: EdgeInsets.only(left: 4,right: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,0),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.15),
                            
                                          )
                                        ]
                          ),
                          child:TextFormField(
                                        controller: language,
                                        // controller: _nameController,
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(0.76),
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            
                                            hintText: 'language',
                                            
                                            hintStyle: TextStyle(
                                              color: Colors.black .withOpacity(0.6),
                                            ),
                                           
                                            
                                            enabled: true,
                                            contentPadding: const EdgeInsets.only(
                                                left: 14.0, bottom: 8.0, top: 8.0),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: new BorderSide(color: Colors.transparent),
                                              borderRadius: new BorderRadius.circular(29),
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: new BorderSide(color: Colors.transparent),
                                              borderRadius: new BorderRadius.circular(29),
                                            ),
                                          ),
                                      ),
                                       
                        ),
                       
                          
                            ],
                          ),
                        ),
                      ),
                    ),
                    actions: [
                      ElevatedButton(onPressed: (){
                           
                             Provider.of<UserData>(context,listen: false).postLanguage(language.text.toString(),ctx);
                             
                            },
                           child: Text('Add'))
                              
                    ], 
                  );
                });


}

void addEducationDialog(BuildContext ctx){
  
  TextEditingController title = TextEditingController();
  TextEditingController passed_year = TextEditingController();
  TextEditingController description = TextEditingController();
  // void dispose(){
  //   title.clear();
  // }
  
  File? files ;
  Size size  = MediaQuery.of(ctx).size;
 
 showDialog(
                context: (ctx),
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    scrollable: true,
                    title: Text('   Add Education',style: TextStyle(color: Palette.lightPurple,fontSize: 
                              22,fontWeight: FontWeight.bold),),
                              
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width*0.84,
                        
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              
                              Container(
                          alignment: Alignment.center,
                          height: 45,
                          padding: EdgeInsets.only(left: 4,right: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,0),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.15),
                            
                                          )
                                        ]
                          ),
                          child:TextFormField(
                                        controller: title,
                                        // controller: _nameController,
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(0.76),
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            
                                            hintText: 'title',
                                            
                                            hintStyle: TextStyle(
                                              color: Colors.black .withOpacity(0.6),
                                            ),
                                           
                                            
                                            enabled: true,
                                            contentPadding: const EdgeInsets.only(
                                                left: 14.0, bottom: 8.0, top: 8.0),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: new BorderSide(color: Colors.transparent),
                                              borderRadius: new BorderRadius.circular(29),
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: new BorderSide(color: Colors.transparent),
                                              borderRadius: new BorderRadius.circular(29),
                                            ),
                                          ),
                                      ),
                                       
                        ),
                        SizedBox(height: 12,),
                               Container(
                          alignment: Alignment.center,
                          height: 45,
                          padding: EdgeInsets.only(left: 4,right: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,0),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.15),
                            
                                          )
                                        ]
                          ),
                          child:TextFormField(
                             keyboardType: TextInputType.number,
                                        controller: passed_year,
                                        // controller: _nameController,
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(0.76),
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            
                                            hintText: 'year',
                                            
                                            hintStyle: TextStyle(
                                              color: Colors.black .withOpacity(0.6),
                                            ),
                                           
                                            
                                            enabled: true,
                                            contentPadding: const EdgeInsets.only(
                                                left: 14.0, bottom: 8.0, top: 8.0),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: new BorderSide(color: Colors.transparent),
                                              borderRadius: new BorderRadius.circular(29),
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: new BorderSide(color: Colors.transparent),
                                              borderRadius: new BorderRadius.circular(29),
                                            ),
                                          ),
                                      ),
                                       
                        ),
                         SizedBox(height: 12,),
                         Container(
                          alignment: Alignment.center,
                          height: 73,
                          padding: EdgeInsets.only(left: 4,right: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,0),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.15),
                            
                                          )
                                        ]
                          ),
                          child:TextFormField(
                            maxLines: 5,
                                        controller: description,
                                        // controller: _nameController,
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(0.76),
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          
                                          decoration: InputDecoration(
                                            
                                            filled: true,
                                            fillColor: Colors.white,
                                            
                                            hintText: 'description',
                                            
                                            hintStyle: TextStyle(
                                              color: Colors.black .withOpacity(0.6),
                                            ),
                                           
                                            
                                            enabled: true,
                                            contentPadding: const EdgeInsets.only(
                                                left: 14.0, bottom: 8.0, top: 8.0),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: new BorderSide(color: Colors.transparent),
                                              borderRadius: new BorderRadius.circular(29),
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: new BorderSide(color: Colors.transparent),
                                              borderRadius: new BorderRadius.circular(29),
                                            ),
                                          ),
                                      ),
                                       
                        ),
                       SizedBox(height: 12,),
                          
                            ],
                          ),
                        ),
                      ),
                    ),
                    actions: [
                      ElevatedButton(onPressed: (){
                           
                             Provider.of<UserData>(context,listen: false).postEducation(ctx,title.text.toString(), description.text.toString(), passed_year.text.toString());
                             
                            },
                           child: Text('Add'))
                              
                    ], 
                  );
                });


}

// Future<File> getImage() async {
// final ImagePicker _picker = ImagePicker();
// // Pick an image
// final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
// //TO convert Xfile into file
// File file = File(image!.path);
// //print(‘Image picked’);
// print(file);
// return file;
// }