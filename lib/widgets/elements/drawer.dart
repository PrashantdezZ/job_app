import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/screens/staff_screen/staff_add_dialog.dart';
import 'package:job_app/screens/user_screens/users_add_dialog.dart';
import 'package:job_app/data/shared_preferences.dart/user_preferences.dart';




class UserDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
     
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
                    context.router.navigateNamed('home');
                  },
                ),
          
                
          ExpansionTile(
            title: Text('Certification'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.work_sharp),
            expandedAlignment: Alignment.centerRight,
            
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.view_agenda),
                title:Text('View Certificates') ,
                onTap: (){
                  context.router.navigateNamed('certificate');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Add Certificate'),
                onTap: (){
                  
                },
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.update),
                title: Text('Update Certificateob') ,
                onTap: (){},
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.delete),
                title: Text('Delete Certificate'),
                onTap: (){},
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Education'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.category),
            expandedAlignment: Alignment.centerRight,
            
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.view_agenda),
                title:Text('View Education') ,
                onTap: (){
                    context.router.navigateNamed('education');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Create Education'),
                onTap: (){
                  addEducationDialog(context);
                },
              ),
              

              
            ],
          ),
          ExpansionTile(
            title: Text('Expeiences'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.newspaper),
            expandedAlignment: Alignment.centerRight,
            
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.view_agenda),
                title:Text('View Experience') ,
                onTap: (){
                  context.router.navigateNamed('experience');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Add Expeience'),
                onTap: (){
                  context.router.navigateNamed('create-experience');
                },
              ),
              
            ],
          ),
          ExpansionTile(
            title: Text('Interests'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.ads_click),
            expandedAlignment: Alignment.centerRight,
            
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.view_agenda),
                title:Text('View Interests') ,
                onTap: (){
                    context.router.navigateNamed('interest');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Add Interest'),
                onTap: (){},
              ),
             
            ],
          ),
          ExpansionTile(
            title: Text('Languages'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.corporate_fare),
            expandedAlignment: Alignment.centerRight,
            
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.view_agenda),
                title:Text('View Languages') ,
                onTap: (){
                  context.router.replaceNamed('language');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Add Languages'),
                onTap: (){
                  addLanguageDialog(context);
                },
              ),
              

            ],
          ),
          ExpansionTile(
            title: Text('Skills'),
            trailing: Icon(Icons.arrow_forward),
            leading: Icon(Icons.lightbulb),
            expandedAlignment: Alignment.centerRight,
            
            children: [
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.view_agenda),
                title:Text('View Skills') ,
                onTap: (){
                  context.router.navigateNamed('skill');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Add Skill'),
                onTap: (){
                  addskillDialog(context);
                },
              ),
              
              
            ],
          ),
         ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.logout_rounded),
                title: Text('Log Out'),
                onTap: (){
                  UserPreferences().removeUser();
                  context.router.navigateNamed('/login');
                  // context.navigateNamedTo('/login');
                },
              ),

        ],
      ),

    );
     
     

    
  }
}