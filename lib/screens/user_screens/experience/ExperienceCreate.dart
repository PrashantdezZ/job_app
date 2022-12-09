import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/data/providers/user_creds/user_data.dart';
import 'package:provider/provider.dart';

class CreateExpereinceScreen extends StatefulWidget {
  const CreateExpereinceScreen({Key? key}) : super(key: key);

  @override
  State<CreateExpereinceScreen> createState() => _CreateExpereinceScreenState();
}

class _CreateExpereinceScreenState extends State<CreateExpereinceScreen> {
  final formKey = GlobalKey<FormState>();
    final title = TextEditingController();
    
    
    final from_date = TextEditingController();
    final to_date = TextEditingController();
    final description= TextEditingController();
    
   File? img;
    
     @override
    void dispose(){
      title.dispose();
      
      from_date.dispose();
      to_date.dispose();
      description.dispose();
      
      super.dispose();
    }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_rounded),color: Colors.white,onPressed: (){
            context.router.pop() ;
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
                Text('  Add Your Expereince',style: TextStyle(color: Palette.lightPurple,fontSize: 
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
                                          
                                          hintText: 'Description',
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
                        }, child: Text('Upload Expereince letter')),           
                      SizedBox(height: 22,), 

                                     GestureDetector(
                        onTap: ()async{
                          print(formKey.currentState!);
                          print(img);
                          Provider.of<UserData>(context,listen: false).postUserExperience(title.text.toString(), description.text.toString(), img!);
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
                            child: Text('Add ',style:TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w500)),
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