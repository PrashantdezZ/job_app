import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/data/model/usermodels/language.dart';
import 'package:job_app/data/model/usermodels/skill.dart';
import 'package:job_app/data/providers/user_creds/user_data.dart';
import 'package:job_app/widgets/elements/drawer.dart';
import 'package:provider/provider.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    Provider.of<UserData>(context,listen: false).getLanguage();
    return Scaffold(
      
      appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_rounded),color: Colors.white,onPressed: (){
             context.router.replaceNamed('/home');
          },),
      ),
      body:Container(
        padding: EdgeInsets.all(14),
        child: Consumer<UserData>(
          builder: (context, provider, child) {
            return ListView.builder(
              itemCount: provider.lanResponseData.length,
              itemBuilder: (context, index) {
                Language sk = provider.lanResponseData[index];
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
                  
                  title: Text(sk.title),
                  leading: Icon(Icons.language,color: Palette.lightPurple,)
                  
                );
              },
            );
          },
          
        ),
      ) ,
    );
    
  }
}