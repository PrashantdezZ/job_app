import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/data/providers/user_creds/user_data.dart';

import 'package:provider/provider.dart';

class ExperiencesScreen extends StatefulWidget {
  const ExperiencesScreen({Key? key}) : super(key: key);

  @override
  State<ExperiencesScreen> createState() => _ExperiencesScreenState();
}

class _ExperiencesScreenState extends State<ExperiencesScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Provider.of<UserData>(context,listen: false).getUserExperience();

    return Scaffold(
     
      appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_rounded),color: Colors.white,onPressed: (){
             context.router.pop();
          },),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text('Job Experience',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Palette.lightPurple
            ),),
            SizedBox(height: 16,),
            SizedBox(
              height: size.height*0.70,
              child: Consumer<UserData>(
                builder: (context, provider, child) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: provider.expResponseData.length,
                    itemBuilder: (context, index) {
                      var exp = provider.expResponseData[index];
                      double lengthh = 16;
                      if(exp.company.characters.length>10){
                        lengthh = 14.4;
                      }
                      return  GestureDetector(
                      onTap:(){print('');},
                      child: Stack(
                        children:[ Container(
                          height:size.height*0.3,
                          margin: EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            
                                     boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0,0),
                                        blurRadius: 10,
                                        color:Colors.black.withOpacity(0.3),
                                          
                                      )
                                    ],
                            borderRadius: BorderRadius.circular(10),
                            color:Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                      
                              children: [
                                Text(exp.title,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color:Colors.black.withOpacity(0.7),
                                          ),),
                                          SizedBox(height: 12,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      
                                      width: size.width*0.30,
                                      height: size.height*0.2,
                                      decoration: BoxDecoration(
                                         boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0,0),
                                            blurRadius: 10,
                                            color:Colors.black.withOpacity(0.3),
                                                  
                                          )
                                        ],
                                        
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(exp.experienceLetterUrl),)
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 13),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          
                                            Text('Company:'+exp.company,
                                            
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: lengthh,
                                                color: Colors.black.withOpacity(0.7),
                                              ),
                                            ),
                                            
                                            SizedBox(height: 10,),
                                            Text('from: '+exp.fromDate.year.toString()+'-'+exp.fromDate.month.toString()+'-'+exp.fromDate.day.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13,
                                                color: Colors.black.withOpacity(0.4),
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Text('from: '+exp.toDate.year.toString()+'-'+exp.toDate.month.toString()+'-'+exp.toDate.day.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13,
                                                color: Colors.black.withOpacity(0.4),
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            
                                            // Text('Description:'+exp.description,
                                           
                                            
                                            //   style: TextStyle(
                                            //     fontWeight: FontWeight.w400,
                                            //     fontSize: 11,
                                            //     color: Colors.black.withOpacity(0.8),
                                            //   ),
                                            // ),
                                            
                      
                                        ],
                                      ),
                                    ),
                                   
                                    
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 30,
                          right: 10,
                          child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  IconButton(onPressed: (){}, 
                                                  icon: Icon(Icons.edit,color: Palette.lightPurple,),
                                                  ),
                                                  SizedBox(width: 3.4,),
                                                  IconButton(onPressed: (){}, 
                                                  icon: Icon(Icons.delete,color: Colors.red,),
                                                  )
                                                ],
                                              ))
                        ]
                      ),
                    );

                    },
                  );
                },
              ),
            )
          ],
        ),
      )
    );
    
  }
}