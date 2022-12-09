import 'package:flutter/material.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/data/model/job_model/job.dart';

import 'package:job_app/data/providers/user_creds/staff_provider.dart';
import 'package:job_app/data/routes/router.gr.dart';
import 'package:job_app/screens/jobDetailscreen.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';



class List_job extends StatelessWidget {
  
    
  @override
  Widget build(BuildContext context) {
    Provider.of<StaffProvider>(context,listen: false).getJobs();
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
               padding: const EdgeInsets.only(left:18.0,top:7),
               child: Text('Recently added jobs',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.8),
                ),
                ),
             ),
      SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(left:18.0,top:7,right: 18),
        child: Column(
          children: [
            Consumer<StaffProvider>(
              builder: (context, provider, child) {
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: provider.jobResponseData.length,
                  
                  itemBuilder: (context, index) {
                    Jobs job  = provider.jobResponseData[index];
                    
                      return  GestureDetector(
                
                              onTap:(){
                                print(job.id);
                                context.router.push(JobDetailRoute(id: job.id,job: job));
                                // Navigator.of(context).pushReplacementNamed('/detail_page',);
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 15),
                                height: 62,
                              
                                decoration: BoxDecoration(
                                   boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0,0),
                                      blurRadius: 10,
                                      color:Colors.black .withOpacity(0.3),
                    
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  color:Palette.lightBg,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Container(
                                        width: 60,
                                        
                                        
                                        decoration: BoxDecoration(
                                          // color: Colors.red,
                                          borderRadius: BorderRadius.circular(10),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(job.bannerUrl),)
                                        ),
                                      )
                                      ,
                                      Padding(
                                        padding: const EdgeInsets.only(left: 12),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                              Text(job.title,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  color: Palette.lightPurple,
                                                ),
                                              ),
                                              Text(job.company,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: Colors.black.withOpacity(0.4),
                                                ),
                                              ),
                                          
                                          ],
                                        ),
                                      ),
                                      // SizedBox(width: widget.size.width*0.10,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                            Text(job.location,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13,
                                                color: Colors.black.withOpacity(0.4),
                                              ),
                                            ),
                                            Text(job.jobType,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13,
                                                color: Colors.black.withOpacity(0.4),
                                              ),
                                            ),
                                        
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                    
                   
                  },
                );
              },
              
            ),
             
            
          ],
        ),
      ),


    ],
          );
  }
}



