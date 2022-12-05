import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/providers/user_creds/staff_provider.dart';
import 'package:provider/provider.dart';



class JobCategoryScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final provider = Provider.of<StaffProvider>(context).getJobCategory();
    return Scaffold(
      
      appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_rounded),color: Colors.white,onPressed: (){
            Navigator.pop(context);
          },),
      ),

      body: SizedBox(
                  
                  height:  size.height,
                  child: Consumer<StaffProvider>(
                    builder: (context, provider, child) {
                      return GridView.builder(

                       
                        scrollDirection: Axis.vertical,
                         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                              ),
                        itemCount: provider.catresponseData.length,
                        itemBuilder: (context, index) {
                          var cat = provider.catresponseData[index];
                          return Container(
                           
                            padding: EdgeInsets.only(top:7,bottom: 1),
                            
                            child: Container(
                                padding: EdgeInsets.all(12),
                                
                                margin: EdgeInsets.only(left: 12,right:10,bottom: 10),
                                decoration: BoxDecoration(
                                 color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                              BoxShadow(
                                                offset: Offset(0,0),
                                                blurRadius: 10,
                                                color:Colors.black.withOpacity(0.3),
                              
                                              )
                                            ]
                                  
                                ),
                                child:  Stack(
                                  children: [Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                          
                                          Image.network(cat.imageUrl!,fit: BoxFit.fill,height:size.height*0.15,width: size.width*0.4,),
                                          // CircleAvatar(foregroundImage: NetworkImage(cat.imageUrl!),),
                                          // Icon(Icons.book,color:widget.colorPurple,),
                                          Text(cat.name!,style: TextStyle(color: Colors.black),),
                                          // Text(cat.id!.toString(),style: TextStyle(color:Colors.black))
                                      ],
                                    ),
                                    Positioned(
                          top: 0,
                          bottom: 34,
                          right: 0,
                          child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end ,
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  IconButton(onPressed: (){}, 
                                                  icon: Icon(Icons.edit,color: Palette.lightPurple,),
                                                  ),
                                                  
                                                  IconButton(onPressed: (){}, 
                                                  icon: Icon(Icons.delete,color: Colors.red,),
                                                  )
                                                ],
                                              )
                                              )
                                  ]
                                ),
                                 
                                  
                                
                              ),
                               
                              

                            
                          );
                        },
                      );
                    },
                  ),
                ),
    );
    
  }
}