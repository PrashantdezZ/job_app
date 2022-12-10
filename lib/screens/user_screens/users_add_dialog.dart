

import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:job_app/data/model/usermodels/education.dart';
import 'package:job_app/data/model/usermodels/interest.dart';
import 'package:job_app/data/model/usermodels/language.dart';
import 'package:job_app/data/model/usermodels/skill.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/data/providers/user_creds/staff_provider.dart';
import 'package:job_app/data/providers/user_creds/user_data.dart';
import 'package:job_app/data/shared_preferences.dart/user_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

////////////////////////////////////////User Skill Create,Update,Delete dialogs\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
void addskillDialog(BuildContext ctx){
 
  TextEditingController title = TextEditingController();
  
  
  Size size  = MediaQuery.of(ctx).size;
 
 showDialog(
                context: (ctx),
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    scrollable: true,
                   
                              
                    content: Padding(
                      padding: const EdgeInsets.only(top:8,left: 8,right: 8),
                      child: Container(
                        
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                             const Text('Add Skill',style: TextStyle(color: Palette.lightPurple,fontSize: 
                              22,fontWeight: FontWeight.w500),),
                             const  SizedBox(height: 22,)
,                             Container(
                          alignment: Alignment.center,
                          height: 45,
                          padding: const EdgeInsets.only(left: 4,right: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,6),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.35),
                            
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
                                            hintText: 'Eg.Flutter ',
                                            
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
                      MaterialButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.0))),
                                elevation: 10.0,
                                height: 50,
                                color: Palette.lightPurple,
                                onPressed: () {
                                  Provider.of<UserData>(context,listen: false).postSkill(title.text.toString(),ctx);
                                  },

                                    child: Text(
                                                "Add",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  
                                                ),
                                              ),
                                
                                
                              ),
                     
                              
                    ], 
                  );
                });


}
void updateSkillDialog(BuildContext ctx,Skill sk){
  
  TextEditingController title = TextEditingController();
  
  title.text = sk.skill;
  File? files ;
  Size size  = MediaQuery.of(ctx).size;
 
 showDialog(
                context: (ctx),
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    scrollable: true,
                    title: Text('Update Skill',style: TextStyle(color: Palette.lightPurple,fontSize: 
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
                      MaterialButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.0))),
                                elevation: 10.0,
                                height: 50,
                                color: Palette.lightPurple,
                                onPressed: () {
                                  Provider.of<UserData>(context,listen: false).updateSkill(sk.id, title.text.toString(), context);
                                  },

                                    child: Text(
                                                "Update",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  
                                                ),
                                              ),
                                
                                
                              ),
                      
                              
                    ], 
                  );
                });


}

void deleteSkillDialog(BuildContext ctx,Skill sk){
  
 
  
  final removeskill = sk.skill;
  File? files ;
  Size size  = MediaQuery.of(ctx).size;
 
 showDialog(
                context: (ctx),
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    scrollable: true,
                    title: Text('Are you sure to remove $removeskill ?',style: const TextStyle(color: Colors.red,fontSize: 
                              22,fontWeight: FontWeight.w500),),
                              
                    content: MaterialButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.0))),
                                elevation: 10.0,
                                height: 50,
                                color: Palette.lightPurple,
                                onPressed: () {
                                  Provider.of<UserData>(context,listen: false).deleteSkill(sk.id, context);
                                  },

                                    child: Text(
                                                "Delete",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  
                                                ),
                                              ),
                                
                                
                              ),
                      
                  );
                });


}


////////////////////////////////////////User language Create,Update,Delete dialogs\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
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
                             
                    content: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                      child: Container(
                        
                        child: Form(
  
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const Text('Add Language',style: TextStyle(color: Palette.lightPurple,fontSize: 
                              22,fontWeight: FontWeight.w500),),
                             const  SizedBox(height: 22,),
                              Container(
                          alignment: Alignment.center,
                          height: 45,
                          padding: EdgeInsets.only(left: 4,right: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,3),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.35),
                            
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
                      MaterialButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.0))),
                                elevation: 10.0,
                                height: 50,
                                color: Palette.lightPurple,
                                onPressed: () {
                                  Provider.of<UserData>(context,listen: false).postLanguage(language.text.toString(),ctx);

                                  },

                                    child: Text(
                                                "Add",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  
                                                ),
                                              ),
                                
                                
                              ),
                              
                    ], 
                  );
                });


}

void updateLanguageDialog(BuildContext ctx,Language sk){
  
  TextEditingController language = TextEditingController();
  // void dispose(){
  //   title.clear();
  // }
  language.text = sk.title;
  File? files ;
  Size size  = MediaQuery.of(ctx).size;
 
 showDialog(
                context: (ctx),
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    scrollable: true,
                             
                    content: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                      child: Container(
                        
                        child: Form(
  
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const Text('Update Language',style: TextStyle(color: Palette.lightPurple,fontSize: 
                              22,fontWeight: FontWeight.w500),),
                             const  SizedBox(height: 22,),
                              Container(
                          alignment: Alignment.center,
                          height: 45,
                          padding: EdgeInsets.only(left: 4,right: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,3),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.35),
                            
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
                      MaterialButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.0))),
                                elevation: 10.0,
                                height: 50,
                                color: Palette.lightPurple,
                                onPressed: () {
                                  Provider.of<UserData>(context,listen: false).updateLanguage(sk.id,language.text.toString(),ctx);

                                  },

                                    child: Text(
                                                "Update",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  
                                                ),
                                              ),
                                
                                
                              ),
                              
                    ], 
                  );
                });


}

void deleteLanguageDialog(BuildContext ctx,Language sk){
  
 
  
  final removelanguage = sk.title ;
  File? files ;
  Size size  = MediaQuery.of(ctx).size;
 
 showDialog(
                context: (ctx),
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    scrollable: true,
                    title: Text('Are you sure to remove $removelanguage ?',style: const TextStyle(color: Colors.red,fontSize: 
                              22,fontWeight: FontWeight.w500),),
                              
                    content: MaterialButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.0))),
                                elevation: 10.0,
                                height: 50,
                                color: Palette.lightPurple,
                                onPressed: () {
                                  Provider.of<UserData>(context,listen: false).deleteLanguage(sk.id, context);
                                  },

                                    child: Text(
                                                "Delete",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  
                                                ),
                                              ),
                                
                                
                              ),
                      
                  );
                });


}


/////////////////////////////////////////User Interest Create,Update,Delete dialogs\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
void addintersetDialog(BuildContext ctx){
  
  TextEditingController interest = TextEditingController();
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
                             
                    content: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                      child: Container(
                        
                        child: Form(
  
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const Text('Add Interest',style: TextStyle(color: Palette.lightPurple,fontSize: 
                              22,fontWeight: FontWeight.w500),),
                             const  SizedBox(height: 22,),
                              Container(
                          alignment: Alignment.center,
                          height: 45,
                          padding: EdgeInsets.only(left: 4,right: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,3),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.35),
                            
                                          )
                                        ]
                          ),
                          child:TextFormField(
                                        controller: interest,
                                        // controller: _nameController,
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(0.76),
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            
                                            hintText: 'Eg.Software design',
                                            
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
                      MaterialButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.0))),
                                elevation: 10.0,
                                height: 50,
                                color: Palette.lightPurple,
                                onPressed: () {
                                  Provider.of<UserData>(context,listen: false).postInterest(ctx,interest.text.toString());

                                  },

                                    child: Text(
                                                "Add",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  
                                                ),
                                              ),
                                
                                
                              ),
                              
                    ], 
                  );
                });


}

void updateInterestDialog(BuildContext ctx,Interest sk){
  
  TextEditingController language = TextEditingController();
  // void dispose(){
  //   title.clear();
  // }
  language.text = sk.title;
  File? files ;
  Size size  = MediaQuery.of(ctx).size;
 
 showDialog(
                context: (ctx),
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    scrollable: true,
                             
                    content: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                      child: Container(
                        
                        child: Form(
  
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const Text('Update Interest',style: TextStyle(color: Palette.lightPurple,fontSize: 
                              22,fontWeight: FontWeight.w500),),
                             const  SizedBox(height: 22,),
                              Container(
                          alignment: Alignment.center,
                          height: 45,
                          padding: EdgeInsets.only(left: 4,right: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,3),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.35),
                            
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
                                            
                                            hintText: 'eg. Mobile Design',
                                            
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
                      MaterialButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.0))),
                                elevation: 10.0,
                                height: 50,
                                color: Palette.lightPurple,
                                onPressed: () {
                                  Provider.of<UserData>(context,listen: false).updateInterest(ctx,language.text.toString(),sk.id);

                                  },

                                    child: Text(
                                                "Update",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  
                                                ),
                                              ),
                                
                                
                              ),
                              
                    ], 
                  );
                });


}

void deleteIntersetDialog(BuildContext ctx,Interest sk){
  
 
  
  final interest = sk.title ;
  File? files ;
  Size size  = MediaQuery.of(ctx).size;
 
 showDialog(
                context: (ctx),
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    scrollable: true,
                    title: Text('Are you sure to remove $interest ?',style: const TextStyle(color: Colors.red,fontSize: 
                              22,fontWeight: FontWeight.w500),),
                              
                    content: MaterialButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.0))),
                                elevation: 10.0,
                                height: 50,
                                color: Palette.lightPurple,
                                onPressed: () {
                                  Provider.of<UserData>(context,listen: false).deleteInterest(sk.id, context);
                                  },

                                    child: Text(
                                                "Delete",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  
                                                ),
                                              ),
                                
                                
                              ),
                      
                  );
                });


}









//////////////////////////////////////////////User Education add/update/delete dialogs\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


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
                       ],
                          ),
                        ),
                      ),
                    ),
                    actions: [
                      MaterialButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.0))),
                                elevation: 10.0,
                                height: 50,
                                color: Palette.lightPurple,
                                onPressed: () {
                                    Provider.of<UserData>(context,listen: false).postEducation(ctx,title.text.toString(), description.text.toString(), passed_year.text.toString());
                                },

                                    child: Text(
                                                "Add",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  
                                                ),
                                              ),
                                
                                
                              ),
                      
                              
                    ], 
                  );
                });


}

void updateEducationDialog(BuildContext ctx,Education sk){
  
  TextEditingController title = TextEditingController();
  TextEditingController passed_year = TextEditingController();
  TextEditingController description = TextEditingController();
  // void dispose(){
  //   title.clear();
  // }
  title.text = sk.title;
  passed_year.text = sk.passedYear;
  description.text = sk.description;
  File? files ;
  Size size  = MediaQuery.of(ctx).size;
 
 showDialog(
                context: (ctx),
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    scrollable: true,
                    
                              
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width*0.84,
                        
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const Text('Update Education',style: TextStyle(color: Palette.lightPurple,fontSize: 
                              22,fontWeight: FontWeight.w500),),
                             const  SizedBox(height: 22,),
                              Container(
                          alignment: Alignment.center,
                          height: 45,
                          padding: EdgeInsets.only(left: 4,right: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,3),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.35),
                            
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
                                            offset: Offset(0,3),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.35),
                            
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
                                            offset: Offset(0,3),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.35),
                            
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
                       ],
                          ),
                        ),
                      ),
                    ),
                    actions: [
                      MaterialButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.0))),
                                elevation: 10.0,
                                height: 50,
                                color: Palette.lightPurple,
                                onPressed: () {
                                    Provider.of<UserData>(context,listen: false).postEducation(ctx,title.text.toString(), description.text.toString(), passed_year.text.toString());
                                },

                                    child: Text(
                                                "Add",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  
                                                ),
                                              ),
                                
                                
                              ),
                      
                              
                    ], 
                  );
                });


}

void deleteEducationDialog(BuildContext ctx,Education sk){
  
 
  
  final interest = sk.title ;
  
 
 showDialog(
                context: (ctx),
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    scrollable: true,
                    title: Text('Are you sure to remove $interest ?',style: const TextStyle(color: Colors.red,fontSize: 
                              22,fontWeight: FontWeight.w500),),
                              
                    content: MaterialButton(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.0))),
                                elevation: 10.0,
                                height: 50,
                                color: Palette.lightPurple,
                                onPressed: () {
                                  Provider.of<UserData>(context,listen: false).deleteEducation(sk.id, context);
                                  },

                                    child: Text(
                                                "Delete",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  
                                                ),
                                              ),
                                
                                
                              ),
                      
                  );
                });


}


