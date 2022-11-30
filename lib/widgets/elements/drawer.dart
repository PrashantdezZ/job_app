import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/screens/staff_screen/staff_add_dialog.dart';
import 'package:job_app/shared_preferences.dart/user_preferences.dart';




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
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                ),
          ListTile(
                  title: Text(
                    "",
                    // style: Style.BStyle,
                  ),
                  leading: Icon(Icons.note_alt_outlined),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.of(context).pop();
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
                  Navigator.of(context).pushReplacementNamed('/certificate');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Add Certificate'),
                onTap: (){},
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
                    Navigator.of(context).pushReplacementNamed('/education');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Create Education'),
                onTap: (){},
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
                title:Text('View Expeiences') ,
                onTap: (){
                  Navigator.of(context).pushReplacementNamed('/experience');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Add Expeience'),
                onTap: (){
                  addCategoryDialog(context);
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
                    Navigator.of(context).pushReplacementNamed('/interest');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Add Interest'),
                onTap: (){},
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.update),
                title: Text('Update Interests') ,
                onTap: (){},
              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.delete),
                title: Text('Delete Interests'),
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
                  Navigator.of(context).pushReplacementNamed('/language');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Add Languages'),
                onTap: (){},
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
                  Navigator.of(context).pushReplacementNamed('/skill');
                },

              ),
              ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.create),
                title: Text('Add Skill'),
                onTap: (){},
              ),
              
              
            ],
          ),
         ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.logout_rounded),
                title: Text('Log Out'),
                onTap: (){
                  UserPreferences().removeUser();
                  Navigator.of(context).pushReplacementNamed('/login');
                },
              ),

        ],
      ),

    );
     
     

    
  }
}