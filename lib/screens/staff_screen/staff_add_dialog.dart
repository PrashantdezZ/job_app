

import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/providers/user_creds/staff_provider.dart';
import 'package:job_app/providers/user_creds/user_data.dart';
import 'package:provider/provider.dart';
void addCategoryDialog(BuildContext ctx){
  final List<String> option = [
    'Accounting and Finance',
    'Banking / Financial',
    'Choreographer',
    'Modelling',
    'Audio & Video Recording',
    'Public Relation / Advertising',
    'Administrative / Management',
    'Consulting & Professional Services',
  ];
  var currentItemSelected = 'Modelling';
  File? files ;
  Size size  = MediaQuery.of(ctx).size;
 final provider = Provider.of<StaffProvider>(ctx,listen: false);
 showDialog(
                context: (ctx),
                builder: (context) {
                  return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    scrollable: true,
                    title: Text('Add Category',style: TextStyle(color: Palette.lightPurple,fontSize: 
                              22,fontWeight: FontWeight.bold),),
                              
                    content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Select Category',style: TextStyle(color: Color.fromARGB(255, 32, 32, 32),fontSize: 
                              17,fontWeight: FontWeight.w400),),

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
                          child: DropdownButtonFormField2<String>(
                            
                                  // decoration:InputDecoration(
                                  //   labelText:"Select honey type",
                                  //   labelStyle:TextStyle(fontSize:20)
                                  // ),
                                  
                                  decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      
                                    ),
                                  scrollbarAlwaysShow: true,
                                  buttonHeight: 22,
                                  itemSplashColor:Palette.lightPurple,
                                  dropdownPadding: EdgeInsets.all(15),
                                  dropdownDecoration: BoxDecoration(
                                    borderRadius:BorderRadius.circular(17),
                                    ),

                                  isExpanded: true,
                                  // iconEnabledColor: Colors.white,
                                  focusColor: Colors.white,
                                  items: option.map((String dropDownItem) {
                                    return DropdownMenuItem<String>(
                                      
                                      value: dropDownItem,
                                      child: Text(
                                        dropDownItem,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (newValueSelect) {
                                    
                                      currentItemSelected = newValueSelect!;
                                      // print(currentItemSelected);
                                      },
                                  value: currentItemSelected,
                                ),
                        ),
                        SizedBox(height: 12,),
                          ElevatedButton(onPressed: ()async{
                            // getImage();
                            final picker = ImagePicker();
                            final pickedFile = await picker.pickImage(source:ImageSource.gallery);
                            if(pickedFile ==null) return;

                            else{
                              final file  =File(pickedFile.path);
                              print(file);
                              files = file;
                            }
                          }, child: Text('Pick Image'))
                              // Text('Upload Image',style: TextStyle(color: Color.fromARGB(255, 32, 32, 32),fontSize: 
                              // 17,fontWeight: FontWeight.w400),),
                              // TextFormField(
                              //   decoration: InputDecoration(
                              //     labelText: 'Email',
                              //     // icon: Icon(Icons.email),
                              //   ),
                              // ),
                              // TextFormField(
                              //   decoration: InputDecoration(
                              //     labelText: 'Message',
                              //     // icon: Icon(Icons.message ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                     actions: [
                      ElevatedButton(onPressed: (){
                        print(currentItemSelected);
                        print(files);
                        provider.postJobCategory(currentItemSelected, files);
                      }, child: Text('Create'))
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