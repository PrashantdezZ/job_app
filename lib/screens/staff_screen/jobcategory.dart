import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/widgets/elements/adminDrawer.dart';

class JobCategoryScreen extends StatefulWidget {

  const JobCategoryScreen({Key? key}) : super(key: key);

  @override
  State<JobCategoryScreen> createState() => _JobCategoryScreenState();
}

class _JobCategoryScreenState extends State<JobCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> items = [
    'Accounting and Finance',
    'Banking / Financial',
    'Choreographer',
    'Modelling',
    'Audio & Video Recording',
    'Public Relation / Advertising',
    'Administrative / Management',
    'Consulting & Professional Services',
  ];
  String? selectedValue;
  final textEditingController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    final _nameController = TextEditingController();
    final _imageController = TextEditingController();
    var option = [
    'Item1',
    'Item2','item3','item4'
  ];
  var currentItemSelected = "Item1";
  var type_of_honey = "Item1";
    return Scaffold(
      backgroundColor: Colors.white,
            drawer: AdminDrawer(),
            body: Padding(
              padding: EdgeInsets.all(22),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Create Category',
                  style:TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Palette.lightPurple,
                  )
                  ),
                  SizedBox(height: 45,),
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('  Select Job Category',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.77)
                        ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          alignment: Alignment.topCenter,
                          height: 55,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,0),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.3),
                            
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
                                  buttonHeight: 20,
                                  itemHeight: kMinInteractiveDimensionCupertino,
                                  // dropdownColor: Colors.blue[900],
                                  // isDense: true,
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
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (newValueSelect) {
                                    
                                      currentItemSelected = newValueSelect!;
                                      type_of_honey = newValueSelect;
                                   
                                  },
                                  value: currentItemSelected,
                                ),
                        ),
                        SizedBox(height: 40,),
                        Container(
                                alignment: Alignment.topCenter,
                          height: 55,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,0),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.3),
                            
                                          )
                                        ]
                          ),
                          child: TextFormField(
                            controller: _nameController,
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.76),
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.76),
                                
                                hintText: 'Category Name',
                                hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.36)
                                ),
                               
                                
                                enabled: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.transparent),
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.transparent),
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                              ),
                          ),
                          
                         
                        ),
                        
                         SizedBox(height: 25,),
                         Container(
                                alignment: Alignment.topCenter,
                          height: 55,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,0),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.3),
                            
                                          )
                                        ]
                          ),
                          child: TextFormField(
                            controller: _nameController,
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.76),
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.76),
                                
                                hintText: 'Category Name',
                                hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.36)
                                ),
                               
                                
                                enabled: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.transparent),
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.transparent),
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                              ),
                          ),
                          
                         
                        ),
                        SizedBox(height: 25,),
                        Container(
                                alignment: Alignment.topCenter,
                          height: 55,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,0),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.3),
                            
                                          )
                                        ]
                          ),
                          child: TextFormField(
                            controller: _nameController,
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.76),
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.76),
                                
                                hintText: 'Category Name',
                                hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.36)
                                ),
                               
                                
                                enabled: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.transparent),
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.transparent),
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                              ),
                          ),
                          
                         
                        ),
                        SizedBox(height: 25,),
                        Container(
                                alignment: Alignment.topCenter,
                          height: 55,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,0),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.3),
                            
                                          )
                                        ]
                          ),
                          child: TextFormField(
                            controller: _nameController,
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.76),
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.76),
                                
                                hintText: 'Category Name',
                                hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.36)
                                ),
                               
                                
                                enabled: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.transparent),
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.transparent),
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                              ),
                          ),
                          
                         
                        ),
                         SizedBox(height: 25,),
                         TextFormField(
                              controller: _nameController,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                              ),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                
                                hintText: 'Category Name',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.7)
                                ),
                                enabled: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.transparent),
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.transparent),
                                  borderRadius: new BorderRadius.circular(10),
                                ),
                              ),
                         ),

                      ],
                    ),
                  )

                ],
              ) ,
            ),
    );
  }
}