import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/data/model/usermodels/skill.dart';
import 'package:job_app/data/providers/user_creds/user_data.dart';
import 'package:job_app/widgets/elements/drawer.dart';
import 'package:provider/provider.dart';

class SkillScreen extends StatefulWidget {
  const SkillScreen({Key? key}) : super(key: key);

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  @override
  Widget build(BuildContext context) {
    Provider.of<UserData>(context,listen: false).getSkill();
    return Scaffold(
      
      appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_rounded),color: Colors.white,onPressed: (){
             context.router.pop();
          },),
      ),
      body:Container(
        padding: EdgeInsets.all(14),
        child: Consumer<UserData>(
          builder: (context, provider, child) {
            return ListView.builder(
              itemCount: provider.skillResponseData.length,
              itemBuilder: (context, index) {
                Skill sk = provider.skillResponseData[index];
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
                  
                  title: Text(sk.skill),
                  leading: Icon(Icons.lightbulb_circle,color: Palette.lightPurple,)
                  
                );
              },
            );
          },
          
        ),
      ) ,
    );
    
  }
}