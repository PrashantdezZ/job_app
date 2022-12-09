import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/data/providers/user_creds/staff_provider.dart';
import 'package:provider/provider.dart';

class JobCreateScreen extends StatefulWidget {
  const JobCreateScreen({Key? key}) : super(key: key);

  @override
  State<JobCreateScreen> createState() => _JobCreateScreenState();
}

class _JobCreateScreenState extends State<JobCreateScreen> {
  final formKey = GlobalKey<FormState>();
    final title = TextEditingController();
    final hiringCompany = TextEditingController();
    final aboutCompany = TextEditingController();
    final maxSalary = TextEditingController();
    final minSalary = TextEditingController();
    final description= TextEditingController();
    final location = TextEditingController();
     
  @override
      initState(){
       
    
   
      
                                             
      super.initState();
     }
     @override
    void dispose(){
      title.dispose();
      hiringCompany.dispose();
      aboutCompany.dispose();
      maxSalary.dispose();
      minSalary.dispose();
      description.dispose();
      location.dispose();
      super.dispose();
    }
  @override
  Widget build(BuildContext context) {
      final provider = Provider.of<StaffProvider>(context,listen: false).getJobCategory();
                                            
     File? img;
     
   
    var option = ['Part Time','Internship','Contract','Freelance','Temporary','Volunteer','Other'];
    var currentjobtype ;
  var currentItemSelected ;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_rounded),color: Colors.white,onPressed: (){
            Navigator.pop(context);
          },),
          ),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            alignment: Alignment.bottomCenter,
            
            
            decoration: BoxDecoration( 
            //color: Colors.purple,
            borderRadius: BorderRadius.circular(45),
             
          ),
            padding: EdgeInsets.all(17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('  Create Jobs',style: TextStyle(color: Palette.lightPurple,fontSize: 
                                    32,fontWeight: FontWeight.w500),),
                                    SizedBox(height: 17,),
                Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                                  
                                   SizedBox(height: 10,),
                                        Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    padding: EdgeInsets.only(left: 4,top:1,bottom: 4,right: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(29),
                                      boxShadow: [
                                                    BoxShadow(
                                                      offset: Offset(0,0),
                                                      blurRadius: 5,
                                                      
                                                      color:Palette.lightPurple.withOpacity(0.7),
                                      
                                                    )
                                                  ]
                                    ),
                                    child:TextFormField(
                                      
                                      controller: title,
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
                                          hintText: 'Job title',
                                          
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
                                    SizedBox(height: 22,),
                                        Row(children: [
                                      Expanded(
                                        child: Container(
                                                                  alignment: Alignment.center,
                                                                  height: 50,
                                                                  padding: EdgeInsets.only(left: 4,bottom: 4,top: 4,right: 4),
                                                                  decoration: BoxDecoration(
                                                                    color: Colors.white,
                                                                    borderRadius: BorderRadius.circular(29),
                                                                    boxShadow: [
                                                    BoxShadow(
                                                      offset: Offset(0,0),
                                                      blurRadius:5,
                                                      color:Palette.lightPurple.withOpacity(0.7),
                                                                    
                                                    )
                                                  ]
                                                                  ),
                                                                  child:TextFormField(
                                                                    controller: hiringCompany,
                                                                    style: TextStyle(
                                          color: Colors.black.withOpacity(0.76),
                                          fontSize: 17,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          
                                          hintText: 'Hiring Company',
                                          hintStyle: TextStyle(
                                            color: Colors.black.withOpacity(0.7)
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
                                      ),
                                      SizedBox(width: 12,),
                                     Expanded(
                                        child: Container(
                                                                  alignment: Alignment.center,
                                                                  height: 50,
                                                                  padding: EdgeInsets.only(left: 4,bottom: 4,top: 4,right: 4),
                                                                  decoration: BoxDecoration(
                                                                    color: Colors.white,
                                                                    borderRadius: BorderRadius.circular(29),
                                                                    boxShadow: [
                                                    BoxShadow(
                                                      offset: Offset(0,0),
                                                      blurRadius:5,
                                                      color:Palette.lightPurple.withOpacity(0.7),
                                                                    
                                                    )
                                                  ]
                                                                  ),
                                                                  child:TextFormField(
                                                                    controller: location,
                                                                    style: TextStyle(
                                          color: Colors.black.withOpacity(0.76),
                                          fontSize: 17,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          
                                          hintText: 'Location',
                                          hintStyle: TextStyle(
                                            color: Colors.black.withOpacity(0.7)
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
                                      ),
                                    
                                    ]),
                                   SizedBox(height: 22,),
             
                                    Row(children: [
                                         Expanded(
                                        child: Container(
                                        alignment: Alignment.center,
                                        height: 50,
                                        padding: EdgeInsets.only(left: 4,bottom: 4,top: 4,right: 4),
                                        decoration: BoxDecoration(
                                                                    color: Colors.white,
                                                                    borderRadius: BorderRadius.circular(29),
                                                                    boxShadow: [
                                                                                  BoxShadow(
                                                                                    offset: Offset(0,0),
                                                                                    blurRadius: 5,
                                                                                    color:Palette.lightPurple.withOpacity(0.7)
                                                                    
                                                                                  )
                                                                                ]
                                        ),
                                        child:DropdownButtonFormField2<String>(
            
                                      decoration: InputDecoration(
                                        hintText: '   Job type',
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
                                        
                                          currentjobtype = newValueSelect!;
                                          },
                                      value: currentjobtype,
                                    ),
                                                                   
                                                                  
                                                                  ),
                                                                ),
                                    
                                      SizedBox(width: 12,),
                                      Expanded(
                                        child: Container(
                                        alignment: Alignment.center,
                                        height: 50,
                                        padding: EdgeInsets.only(left: 4,bottom: 4,top: 4,right: 4),
                                        decoration: BoxDecoration(
                                                                    color: Colors.white,
                                                                    borderRadius: BorderRadius.circular(29),
                                                                    boxShadow: [
                                                                                  BoxShadow(
                                                                                    offset: Offset(0,0),
                                                                                    blurRadius: 5,
                                                                                    color:Palette.lightPurple.withOpacity(0.7)
                                                                    
                                                                                  )
                                                                                ]
                                        ),
                                        
                                            
                                            
                                           
                                      child: Consumer<StaffProvider>(
                                        builder: (context, provider, child) {
                                          List cats = [];
                                          for(int i =0;i<provider.catresponseData.length;i++){
                                           var  item = provider.catresponseData[i];
                                           cats.add(item.name);

                                          }
                                          

                                          return  DropdownButtonFormField2<String>(
                                                decoration: InputDecoration(
                                                  hintText: 'Job category',
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
                                                        items: cats.map(( dropDownItem) {
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
                                              },
                                                value: currentItemSelected,
                                              );
                                     
                                        },
                                        
                                      ),
                                           
                                          
                                          ),
                                          
                                      ),
                                    
                                    ]),
                                   SizedBox(height: 22,),
                                    Row(children: [
                                      Expanded(
                                        child: Container(
                                                                  alignment: Alignment.center,
                                                                  height: 50,
                                                                  padding: EdgeInsets.only(left: 4,bottom: 4,top: 4,right: 4),
                                                                  decoration: BoxDecoration(
                                                                    color: Colors.white,
                                                                    borderRadius: BorderRadius.circular(29),
                                                                    boxShadow: [
                                                    BoxShadow(
                                                      offset: Offset(0,0),
                                                      blurRadius:5,
                                                      color:Palette.lightPurple.withOpacity(0.7),
                                                                    
                                                    )
                                                  ]
                                                                  ),
                                                                  child:TextFormField(
                                                                     keyboardType: TextInputType.number,
                                                                    controller: maxSalary,
                                                                    style: TextStyle(
                                          color: Colors.black.withOpacity(0.76),
                                          fontSize: 17,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          
                                          hintText: 'Max-Salary',
                                          hintStyle: TextStyle(
                                            color: Colors.black.withOpacity(0.7)
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
                                      ),
                                      SizedBox(width: 12,),
                                     Expanded(
                                        child: Container(
                                                                  alignment: Alignment.center,
                                                                  height: 50,
                                                                  padding: EdgeInsets.only(left: 4,bottom: 4,top: 4,right: 4),
                                                                  decoration: BoxDecoration(
                                                                    color: Colors.white,
                                                                    borderRadius: BorderRadius.circular(29),
                                                                    boxShadow: [
                                                    BoxShadow(
                                                      offset: Offset(0,0),
                                                      blurRadius:5,
                                                      color:Palette.lightPurple.withOpacity(0.7),
                                                                    
                                                    )
                                                  ]
                                                                  ),
                                                                  child:TextFormField(
                                                                     keyboardType: TextInputType.number,
    
                                                                    controller: minSalary,
                                                                    style: TextStyle(
                                          color: Colors.black.withOpacity(0.76),
                                          fontSize: 17,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          
                                          hintText: 'Min Salary',
                                          hintStyle: TextStyle(
                                            color: Colors.black.withOpacity(0.7)
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
                                      ),
                                    
                                    ]),
                                   SizedBox(height: 22,),
                                 
                                        Container(
                                    alignment: Alignment.center,
                                    height: 70,
                                    padding: EdgeInsets.only(left: 4,bottom: 4,top: 4,right: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(29),
                                      boxShadow: [
                                                    BoxShadow(
                                                      offset: Offset(0,0),
                                                      blurRadius: 5,
                                                     color:Palette.lightPurple.withOpacity(0.7)
                                      
                                                    )
                                                  ]
                                    ),
                                    child:TextFormField(
                                      maxLines: 3,
                                      controller: aboutCompany ,
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.76),
                                          fontSize: 17,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          
                                          hintText: 'About Company',
                                          hintStyle: TextStyle(
                                            color: Colors.black.withOpacity(0.4)
                                          ),
                                         
                                          
                                          enabled: true,
                                          contentPadding: const EdgeInsets.only(
                                              left: 14.0, bottom: 8.0, top: 8.0),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: new BorderSide(color: Colors.transparent),
                                            borderRadius: new BorderRadius.circular(35),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: new BorderSide(color: Colors.transparent),
                                            borderRadius: new BorderRadius.circular(35),
                                          ),
                                        ),
                                    ),
                                    
                                     
                                    
                                    ),
                                    SizedBox(height: 22,),
                                 Container(
                                    alignment: Alignment.center,
                                    height: 120,
                                    padding: EdgeInsets.only(left: 4,bottom: 4,top: 4,right: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(29),
                                      boxShadow: [
                                                    BoxShadow(
                                                      offset: Offset(0,0),
                                                      blurRadius: 5,
                                                      color:Palette.lightPurple.withOpacity(0.7)
                                      
                                                    )
                                                  ]
                                    ),
                                    child:TextFormField(
                                      maxLines: 30,
                                      controller: description,
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.76),
                                          fontSize: 17,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          
                                          hintText: 'job Description',
                                          hintStyle: TextStyle(
                                            color: Colors.black.withOpacity(0.7)
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
                          SizedBox(height: 22,),
                                   ElevatedButton(onPressed: ()async{
                          // getImage();
                          final picker = ImagePicker();
                          final pickedFile = await picker.pickImage(source:ImageSource.gallery);
                          if(pickedFile ==null) return;

                          else{
                            final file  =File(pickedFile.path);
                            // print(file);
                            img = file;
                          }
                        }, child: Text('Pick Image')),           
                      SizedBox(height: 22,), 

                                     GestureDetector(
                        onTap: ()async{
                          print(formKey.currentState!);
                          print(img);
                           await Provider.of<StaffProvider>(context,listen: false).postJobs(title.toString(), location.toString(), aboutCompany.toString(), currentItemSelected, currentjobtype, description.toString(), hiringCompany.toString() , maxSalary.text, minSalary.toString(), img!);
                        },
                         child: Container(
                          alignment: Alignment.center,
                          width: size.width*0.55,
                          height: 47,
                          padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Palette.lightPurple,
                                        borderRadius: BorderRadius.circular(25),
                                        boxShadow: [
                                                      BoxShadow(
                                                        offset: Offset(0,0),
                                                        blurRadius: 5,
                                                        color:Palette.lightPurple.withOpacity(0.15),
                                        
                                                      )
                                                    ]
                                      ),
                            child: Text('Create',style:TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w500)),
                         ),
                       ) ,           
                    
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
    
  }
}