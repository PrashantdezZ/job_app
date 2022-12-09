
import 'package:flutter/material.dart';
import 'package:job_app/data/providers/auth_provider.dart';
import 'package:job_app/data/providers/user_creds/staff_provider.dart';
import 'package:job_app/data/providers/user_creds/user_data.dart';
import 'package:job_app/data/providers/user_provider.dart';
import 'package:job_app/desgin_elements/design.dart';

import 'package:job_app/data/routes/router.gr.dart';

import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
 MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
     return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>AuthProvider ()),
        ChangeNotifierProvider(create: (_)=>UserProvider()),
        ChangeNotifierProvider(create: (_)=>UserData ()),
        ChangeNotifierProvider(create: (_)=>StaffProvider()),
        
      ],
   
   
    child: MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Job app',
      theme: ThemeData(
        
        
        appBarTheme: AppBarTheme(
                      elevation: 0, // This removes the shadow from all App Bars.
                    ),
        primarySwatch: primarysearch
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),

    ),
    );
  }
}

