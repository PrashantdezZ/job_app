import 'package:flutter/material.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/data/model/usermodels/certification.dart';
import 'package:auto_route/auto_route.dart';
import 'package:job_app/data/providers/user_creds/user_data.dart';
import 'package:job_app/data/routes/router.gr.dart';
import 'package:job_app/widgets/elements/drawer.dart';
import 'package:provider/provider.dart';

class CertificateScreen extends StatefulWidget {
  const CertificateScreen({Key? key}) : super(key: key);

  @override
  State<CertificateScreen> createState() => _CertificateScreenState();
}

class _CertificateScreenState extends State<CertificateScreen> {
  @override
  Widget build(BuildContext context) {
    Provider.of<UserData>(context,listen: false).getCertification();
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
              itemCount: provider.CerResponseData.length,
              itemBuilder: (context, index) {
                Certification sk = provider.CerResponseData[index];
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