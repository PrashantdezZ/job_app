import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/widgets/elements/drawer.dart';

class Formss extends StatelessWidget {
  var option = ['form','list ','container'];
  var currentItemSelected = 'form';
  
   Formss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: UserDrawer(),
      appBar: AppBar(),
      backgroundColor: Colors.white,
      
      body: Center(
        child: Stack(
          
          children:[ 
            
            Positioned(
            

            child: Container(
              alignment: Alignment.bottomCenter,
              
              height: size.height*1,
              decoration: BoxDecoration( 
              //color: Colors.purple,
              borderRadius: BorderRadius.circular(45),
            //   image: new DecorationImage(
            //     fit: BoxFit.cover,
            // image: new AssetImage('assets/images/bg2.jpg')
            //     ),
            //  gradient:LinearGradient(   begin: Alignment.topRight,
            //   end: Alignment.bottomLeft,
            //   stops: [
               
            //     0.6,
            //     0.9,
            //   ],
            //   colors: [
               
            //     Colors.indigo,
            //     Colors.teal,
            //   ],
            // )
            ),
              padding: EdgeInsets.all(17),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('  Create Category',style: TextStyle(color: Palette.lightPurple,fontSize: 
                                      32,fontWeight: FontWeight.w500),),
                                      SizedBox(height: 17,),
                  Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                                    
            
                                          
                                   
                                      //  Padding(
                                      //   padding: EdgeInsets.only(left: 10),
                                      //    child: Text('Category Name',style: TextStyle(color: Color.fromARGB(255, 29, 29, 30),fontSize: 
                                      //       17,fontWeight: FontWeight.w400),),
                                      //  ),
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
                                       
                                      
                                      ),SizedBox(height: 22,),
                                             
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
                                                                      // controller: _nameController,
                                                                      style: TextStyle(
                                            color: Colors.black.withOpacity(0.76),
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            
                                            hintText: 'pick from',
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
                                                                                      blurRadius: 5,
                                                                                      color:Palette.lightPurple.withOpacity(0.7)
                                                                      
                                                                                    )
                                                                                  ]
                                          ),
                                          child:DropdownButtonFormField2<String>(
              
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
                                            },
                                        value: currentItemSelected,
                                      ),
                                                                     
                                                                    
                                                                    ),
                                                                  ),
                                      
                                      ]),
                                     
            
                                          SizedBox(height: 22,),
                                   
                                          Container(
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
                                      child:TextFormField(
                                        // controller: _nameController,
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(0.76),
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            
                                            hintText: 'location',
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
                                     
                                      
            
                                          SizedBox(height: 22,),
                                   
                                     
                                          Container(
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
                                      child:TextFormField(
                                        // controller: _nameController,
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(0.76),
                                            fontSize: 17,
                                            fontWeight: FontWeight.normal,
                                          ),
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            
                                            hintText: 'price tag',
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
                                      SizedBox(height: 22,),
                         Container(
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
                         )            
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );

    
  }
}