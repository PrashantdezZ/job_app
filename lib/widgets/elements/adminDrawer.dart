

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/routes/router.gr.dart';
import 'package:job_app/screens/staff_screen/staff_add_dialog.dart';
import 'package:job_app/shared_preferences.dart/user_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool onChange = false;
    return Drawer(
     
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
           accountName: Text('nakki'),
                  accountEmail: Text('ferse nakki'),
                  currentAccountPicture: CircleAvatar(backgroundColor: Colors.purple,
                  backgroundImage: AssetImage('assets/images/splash.jpg'),) ,
          ),
          ListTile(
                  title: Text(
                    "Home",
                    // style: Style.BStyle,
                  ),
                  leading: Icon(Icons.home),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                ),
          ListTile(
                  title: Text(
                    "Applications",
                    // style: Style.BStyle,
                  ),
                  leading: Icon(Icons.note_alt_outlined),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                
          ExpansionTile(
            title: Text('Jobs'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.work_sharp),
            expandedAlignment: Alignment.centerRight,
            
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.view_agenda),
                title:Text('View Job') ,
                onTap: (){
                    context.router.navigateNamed('/staff-jobs');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Create Job'),
                onTap: (){},
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.update),
                title: Text('Update Job') ,
                onTap: (){},
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.delete),
                title: Text('Delete Job'),
                onTap: (){},
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Job Category'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.category),
            expandedAlignment: Alignment.centerRight,
            
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.view_agenda),
                title:Text('View Job category') ,
                onTap: (){
                    context.router.navigateNamed('/jobCategory');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Create Job Category'),
                onTap: (){
                  addCategoryDialog(context);
                },
              ),
              

              
            ],
          ),
          ExpansionTile(
            title: Text('Blogs'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.newspaper),
            expandedAlignment: Alignment.centerRight,
            
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.view_agenda),
                title:Text('View Blogs') ,
                onTap: (){

                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Create Blogs'),
                onTap: (){},
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.update),
                title: Text('Update Blogs') ,
                onTap: (){},
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.delete),
                title: Text('Delete Blogs'),
                onTap: (){},
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Advertisement'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.ads_click),
            expandedAlignment: Alignment.centerRight,
            
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.view_agenda),
                title:Text('View Ads Banner') ,
                onTap: (){
                    context.router.navigateNamed('/staff-ads');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Create Ads Banner'),
                onTap: (){},
              ),
              
            ],
          ),
          ExpansionTile(
            title: Text('Hiring Company'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.corporate_fare),
            expandedAlignment: Alignment.centerRight,
            
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.view_agenda),
                title:Text('View Companies') ,
                onTap: (){

                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Add Companies'),
                onTap: (){},
              ),
             

            ],
          ),
          ExpansionTile(
            title: Text('Ideas'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.lightbulb),
            expandedAlignment: Alignment.centerRight,
            
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.view_agenda),
                title:Text('View Ideas') ,
                onTap: (){

                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Create Ideas'),
                onTap: (){},
              ),
              
            ],
          )
          ,

          ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: (){
                  UserPreferences().removeUser();
                  context.router.replaceNamed('/login') ;
                  
                  
                },
              ),
        ],
      ),

    );
    
  }
}