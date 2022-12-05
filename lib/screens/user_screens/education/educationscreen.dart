import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/model/usermodels/education.dart';
import 'package:job_app/providers/user_creds/user_data.dart';
import 'package:job_app/providers/user_provider.dart';
import 'package:job_app/routes/router.gr.dart';
import 'package:job_app/widgets/elements/drawer.dart';
import 'package:provider/provider.dart';



class EducationScreen extends StatelessWidget {
  final dynamic edu ='';
  @override
  Widget build(BuildContext context) {
    Provider.of<UserData>(context).getEducation();
    return Scaffold(
      
      appBar:AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,),onPressed: (){
         
        },),
        actions: [
          
        ],
      ),
      body:Container(
        padding: EdgeInsets.all(14),
        child: Consumer<UserData>(
          builder: (context, provider, child) {
            return ListView.builder(
              itemCount: provider.EduResponseData.length,
              itemBuilder: (context, index) {
                Education edu = provider.EduResponseData[index];
                return ListTile(
                  
                  trailing: SizedBox(
                    width: 111,
                    child: Row(children: [
                                IconButton(onPressed: (){}, 
                                icon: Icon(Icons.edit,color: Palette.lightPurple,),
                                ),
                                
                                IconButton(onPressed: (){}, 
                                icon: Icon(Icons.delete,color: Colors.red,),
                                )
                              ],),
                  ),
                  
                  title: Text(edu.title),
                  subtitle: Text('passed year: '+edu.passedYear),
                  
                );
              },
            );
          },
          
        ),
      ) 
    );
    
  }
}