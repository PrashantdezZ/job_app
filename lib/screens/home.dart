
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/model/job_model/job.dart';
import 'package:job_app/providers/user_creds/staff_provider.dart';
import 'package:job_app/widgets/elements/adminDrawer.dart';
import 'package:job_app/widgets/elements/drawer.dart';
import 'package:job_app/widgets/elements/list_job.dart';
import 'package:job_app/widgets/elements/scrollWidget.dart';
import 'package:job_app/widgets/elements/searchWidget.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../providers/user_provider.dart';

class Home extends StatefulWidget {

   Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   final formKey = GlobalKey<FormState>();

    final _jobController = TextEditingController();

    final _cityController = TextEditingController();

    final _jobTypeController = TextEditingController(); 

  @override
  void dispose(){
    _jobController.dispose();
    _cityController.dispose();
    _jobTypeController.dispose();
    super.dispose();
  }
  // @override
  // void initState(){

    
  //   // Jobcatprovider.getJobCategory();
  //   // print(Jobcatprovider.responseData);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    //  Provider.of<StaffProvider>(context);
    
    final Size size  = MediaQuery.of(context).size;
     Color colorWhite = Colors.white;
     Color colorPurple = Palette.lightPurple;
     bool istap =false;
    print('widget build');
    // print(Jobcatprovider.responseData);
    
    return Scaffold(
      
      
      // backgroundColor: Colors.white ,
      drawer: UserDrawer(),
      appBar:AppBar(
        backgroundColor: Palette.searchColor,
        shadowColor: Color.fromARGB(0, 179, 59, 59),
        surfaceTintColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(foregroundImage: AssetImage('assets/images/splash.jpg'),),
          )
          
        ],
      ) ,
      // body: Text('dfsdfsdf'),
      body: SingleChildScrollView(
      
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            advancedSearch(size: size, formKey: formKey, jobController: _jobController, cityController: _cityController, jobTypeController: _jobTypeController),
            SizedBox(height: 10,),
              
            ScrollWidget(size: size, colorPurple: colorPurple),

            List_job(size: size),
          ]
        ),

            ) ,
      

    );
    
  }
}

