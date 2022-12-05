import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/model/job_model/job.dart';



class JobDetailPage extends StatelessWidget {
  final int id;
  final Jobs? job;
   JobDetailPage({Key? key, @PathParam() required this.id, this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top:17,bottom: 10,left:22,right: 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  
                  height: size.height*0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          // color:Colors.yellow,
                          boxShadow: [
                                              BoxShadow(
                                                offset: Offset(1,7),
                                                blurRadius: 10,
                                                color:Colors.black.withOpacity(0.3),
                                
                                              )
                                            ],
                          color:Color.fromARGB(224, 255, 255, 255),
                          borderRadius: BorderRadius.circular(35)),
                        child: IconButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, icon: Icon(Icons.keyboard_arrow_left_outlined)),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                           boxShadow: [
                                              BoxShadow(
                                                offset: Offset(1,7),
                                                blurRadius: 10,
                                                color:Colors.black.withOpacity(0.3),
                                
                                              )
                                            ],
                          color:Color.fromARGB(224, 255, 255, 255),
                          borderRadius: BorderRadius.circular(35)),
                        
                        child: CircleAvatar(foregroundImage: AssetImage('assets/images/splash.jpg')))
    
                  ]),
                ),


                SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(job!.title ,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Colors.black.withOpacity(0.8),
                          ),
                      ),
                      SizedBox(height: 15,),  
                    Container(
                      child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              boxShadow: [
                                                  BoxShadow(
                                                    offset: Offset(1,7),
                                                    blurRadius: 10,
                                                    color:Colors.black.withOpacity(0.3),
                                    
                                                  )
                                                ],
                              color:Color.fromARGB(224, 255, 255, 255),
                              borderRadius: BorderRadius.circular(8)),
                            
                            child: CircleAvatar(foregroundImage: NetworkImage(job!.bannerUrl))),
                            SizedBox(width: 7,),
                        Text(job!.company,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Palette.lightPurple,
                              ),
                            ),
                      ],
                    )  ,
                    )    ,  
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: 125,
                          decoration: BoxDecoration(
                            color:Color.fromARGB(255, 226, 226, 250),
                            borderRadius: BorderRadius.circular(7)

                          ),
                          child: Text(job!.jobType,style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Palette.lightPurple,
                          ),),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: 125,
                          decoration: BoxDecoration(
                            color:Color.fromARGB(255, 226, 226, 250),
                            borderRadius: BorderRadius.circular(7)

                          ),
                          child: Text(job!.location,style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Palette.lightPurple,
                          ),),
                        ),
                  ],
                )
                    ,
                    SizedBox(height:17),
                    
                    ],
                  ),
                )          
                 
              ],
            )
          ),
        
        Container(
          padding: EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: Color(0xFFF9FAFE),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(37),topRight: Radius.circular(37))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Job Description',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                  color: Colors.black.withOpacity(0.8),
                      ),
                      ),
                      Text('lorem ipsum lorem ipsum lorem ipsum lorem ipsumlorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum vlorem ipsum'
                      ,style: TextStyle(
                        fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  letterSpacing: 0.8,
                                  color: Color.fromARGB(255, 48, 48, 48) ,
                      ),
                      )
                    ],
                  ),
                )
        ],
      ),

    );
    
  }
}