import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:job_app/providers/job_provider.dart';
import 'package:job_app/providers/user_creds/staff_provider.dart';
import 'package:job_app/providers/user_creds/user_data.dart';
import 'package:job_app/routes/router.gr.dart';
// import 'package:job_app/screens/auth_screens/forgotpassword.dart';
// import 'package:job_app/screens/auth_screens/loginscreen.dart';
// import 'package:job_app/screens/auth_screens/signupscreen.dart';
// import 'package:job_app/screens/home.dart';
// import 'package:job_app/screens/jobDetailscreen.dart';
// import 'package:job_app/screens/staff_screen/dashboard.dart';
// import 'package:job_app/screens/staff_screen/jobcategory.dart';
// import 'package:job_app/screens/user_screens/certificates/certificateScreen.dart';
// import 'package:job_app/screens/user_screens/education/educationscreen.dart';
// import 'package:job_app/screens/user_screens/experience/experiencesscreen.dart';
// import 'package:job_app/screens/user_screens/interest/interestScreen.dart';
// import 'package:job_app/screens/user_screens/language/languageScreen.dart';
// import 'package:job_app/screens/user_screens/skills/skillScreen.dart';
// import 'package:job_app/widgets/elements/adminDrawer.dart';
// import 'package:job_app/widgets/elements/formss.dart';
import 'package:provider/provider.dart';

import 'providers/auth_provider.dart';
import 'providers/user_provider.dart';
import 'screens/auth_screens/forgotpasswordverify.dart';
import 'screens/splashscreen.dart';

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
        ChangeNotifierProvider(create: (_)=>AuthProvider()),
        ChangeNotifierProvider(create: (_)=>UserProvider()),
        ChangeNotifierProvider(create: (_)=>UserData()),
        ChangeNotifierProvider(create: (_)=>StaffProvider()),
        ChangeNotifierProvider(create: (_)=>jobProvider())
        
        
        
        
      ],
    //   child:  MaterialApp(
        
    //     debugShowCheckedModeBanner: false,
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
        
        
    //     appBarTheme: AppBarTheme(
    //                   elevation: 0, // This removes the shadow from all App Bars.
    //                 ),
    //     primarySwatch: primarysearch
    //   ),
    //   initialRoute: '/splashscreen',
    //   home: Home(),
    //   routes: {
    //     '/splashscreen':(context) => SplashScreen(),
    //     '/home':(context) => Formss(),
    //     '/login':(context)=>LoginPage(),
        
    //     '/signup':(context )=>Register(),
    //     '/forgot_password' :(context) => ForgotScreen(),
    //     '/forgot_password_verify':(context) => ForgotScreenVerify(),
    //     '/dashboard' :(context) => DashBoard(),
    //     '/detail_page':(context) => JobDetailPage(),
    //     '/experience' :(context) => ExperiencesScreen(),
    //     '/education' : (context)=>EducationScreen(),
    //     '/skill':(context) => SkillScreen(),
    //     '/language' :(context)=>LanguageScreen(),
    //     '/interest' :(context) =>InterestScreen() ,
    //     '/certificate' :(context) =>CertificateScreen() 
    //   },
    // ),
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

