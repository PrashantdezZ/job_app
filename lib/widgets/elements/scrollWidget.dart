import 'package:flutter/material.dart';
import 'package:job_app/providers/user_creds/staff_provider.dart';
import 'package:provider/provider.dart';

class ScrollWidget extends StatefulWidget {
  const ScrollWidget({
    Key? key,
    required this.size,
    required this.colorPurple,
  }) : super(key: key);

  final Size size;
  final Color colorPurple;

  @override
  State<ScrollWidget> createState() => _ScrollWidgetState();
}

class _ScrollWidgetState extends State<ScrollWidget> {
  
  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    Provider.of<StaffProvider>(context,listen: false).getJobCategory();
    return Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
         Padding(
           padding: const EdgeInsets.only(left:18.0,top:7),
           child: Text('Categories',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Colors.black.withOpacity(0.8),
            ),
            ),
         ),
          SizedBox(height: 14,),
         

                SizedBox(
                  
                  height:  size.height*0.18,
                  child: Consumer<StaffProvider>(
                    builder: (context, provider, child) {
                      return ListView.builder(

                       
                        scrollDirection: Axis.horizontal,
                        itemCount: provider.catresponseData.length,
                        itemBuilder: (context, index) {
                          var cat = provider.catresponseData[index];
                          return Container(
                            height: 120,
                            padding: EdgeInsets.only(top:7,bottom: 9),
                            
                            child: GestureDetector(
                                  onTap: (){
                                    
                                  },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      height: size.height*0.15,
                      width: widget.size.width*0.31,
                      margin: EdgeInsets.only(left: 22),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            CircleAvatar(foregroundImage: NetworkImage(cat.imageUrl!),),
                            // Icon(Icons.book,color:widget.colorPurple,),
                            Text(cat.name!,style: TextStyle(color: Colors.black),),
                            // Text(cat.id!.toString(),style: TextStyle(color:Colors.black))
                        ],
                      ),
                    ),
                  ),
                          );
                        },
                      );
                    },
                  ),
                ),
             

     
      //       },
      //     ) ;
      //   },
      // )
          
          

        
      ],
    );
  }
}