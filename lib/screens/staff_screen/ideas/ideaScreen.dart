import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/data/model/job_model/idea.dart';
import 'package:job_app/data/model/job_model/job.dart';

import 'package:job_app/data/providers/user_creds/staff_provider.dart';
import 'package:job_app/data/routes/router.gr.dart';
import 'package:provider/provider.dart';

class IdeaScreen extends StatelessWidget {
  const IdeaScreen({Key? key}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    Provider.of<StaffProvider>(context,listen: false).getIdea();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_rounded),color: Colors.white,onPressed: (){
            Navigator.pop(context);
          },),
      ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
                 padding: const EdgeInsets.only(left:18.0,top:7),
                 child: Text('Some Ideas',
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Consumer<StaffProvider>(
                builder: (context, provider, child) {
                  return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: provider.idearesponseData.length,
                    
                    itemBuilder: (context, index) {
                     Idea idea  = provider.idearesponseData[index];
                      
                        return  GestureDetector(
                  
                                onTap:(){
                                  print(idea.id);
                                  // context.router.push(ideaDetailRoute(id: idea.id,idea: idea));
                                  // Navigator.of(context).pushReplacementNamed('/detail_page',);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 15),
                                  height:size.height*0.24,
                                
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        
                                        Container(
                                          width: size.width*0.4,
                                          padding: const EdgeInsets.only(left: 12),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text(idea.name!,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22,
                                                    color: Palette.lightPurple,
                                                  ),
                                                ),
                                            
                                            ],
                                          ),
                                        ),
                                        // SizedBox(width: widget.size.width*0.10,),
                                        Expanded(
                                          child: Text(idea.description!,
                                          softWrap: true,
                                          
                                          maxLines: 15,
                                          overflow: TextOverflow.fade,
                                            style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              color: Colors.black.withOpacity(0.4),
                                            ),
                                          ),
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
      //      
      ),
    );
  }
  
}