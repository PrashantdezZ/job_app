import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/data/model/advertisement.dart';
import 'package:job_app/data/providers/user_creds/staff_provider.dart';
import 'package:provider/provider.dart';

class AdvetisementScreen extends StatelessWidget {
  const AdvetisementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final Size size = MediaQuery.of(context).size;
  final provider  = Provider.of<StaffProvider>(context,listen:false).getAds();
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_rounded),color: Colors.white,onPressed: (){
            Navigator.pop(context);
          },),
      ),
      body: Padding(
        padding: EdgeInsets.all(13),
        child: SizedBox(
          height: size.height,
          child: Consumer<StaffProvider>(
            builder: (context, provider, child) {
              return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: provider.adsresponseData.length,
                itemBuilder: (context, index) {
                  Ads ads  = provider.adsresponseData[index];
                  return Container(
                    width: size.width*0.98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                     
                    ),
                    child: Column(children: [
                      Image.network(ads.banner1Url,fit: BoxFit.cover,width: size.width*0.97,height: size.height*0.24,),
                      SizedBox(height: 13,),
                      Image.network(ads.banner1Url,fit: BoxFit.cover,width: size.width*0.97,height: size.height*0.24,),
                      SizedBox(height: 13,),
                      Image.network(ads.banner1Url,fit: BoxFit.cover,width: size.width*0.97,height: size.height*0.24,),
                      SizedBox(height: 13,),
                    ]),
                  );
                },

              );
              
            },
          ) ,

        ),
      ),
    );
    
  }
}