import 'package:flutter/material.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/model/job_model/job.dart';
import 'package:job_app/providers/job_provider.dart';
import 'package:provider/provider.dart';

class List_job extends StatefulWidget {
  const List_job({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<List_job> createState() => _List_jobState();
}

class _List_jobState extends State<List_job> {
  
    
  @override
  Widget build(BuildContext context) {
    Provider.of<jobProvider>(context,listen: false).getJobs();
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
            Consumer<jobProvider>(
              builder: (context, provider, child) {
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: provider.jobResponseData.length,
                  
                  itemBuilder: (context, index) {
                    Jobs job  = provider.jobResponseData[index];
                    
                      return  GestureDetector(
                
                              onTap:(){
                                Navigator.of(context).pushReplacementNamed('/detail_page',);
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



