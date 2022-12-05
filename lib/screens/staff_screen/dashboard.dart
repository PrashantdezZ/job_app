import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/widgets/elements/adminDrawer.dart';
import 'package:job_app/widgets/elements/list_job.dart';
import 'package:job_app/widgets/elements/scrollWidget.dart';
import 'package:job_app/widgets/elements/searchWidget.dart';

class DashBoard extends StatefulWidget {

   DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final formKey = GlobalKey<FormState>();

    final _jobController = TextEditingController();

    final _cityController = TextEditingController();

    final _jobTypeController = TextEditingController(); 

    Color colorPurple = Palette.lightPurple;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: AdminDrawer(),
      
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