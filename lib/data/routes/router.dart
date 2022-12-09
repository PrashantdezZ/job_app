
import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';

import 'package:job_app/screens/auth_screens/forgotpassword.dart';
import 'package:job_app/screens/auth_screens/forgotpasswordverify.dart';
import 'package:job_app/screens/auth_screens/loginscreen.dart';
import 'package:job_app/screens/auth_screens/signupscreen.dart';
import 'package:job_app/screens/home.dart';
import 'package:job_app/screens/jobDetailscreen.dart';
import 'package:job_app/screens/splashscreen.dart';
import 'package:job_app/screens/staff_screen/adsScreen.dart';
import 'package:job_app/screens/staff_screen/dashboard.dart';
import 'package:job_app/screens/staff_screen/ideas/ideaScreen.dart';
import 'package:job_app/screens/staff_screen/jobcategoryScreen.dart';
import 'package:job_app/screens/staff_screen/jobs/jobCreate.dart';
import 'package:job_app/screens/staff_screen/jobs/jobscreen.dart';
import 'package:job_app/screens/user_screens/certificates/certificateScreen.dart';
import 'package:job_app/screens/user_screens/education/educationscreen.dart';
import 'package:job_app/screens/user_screens/experience/ExperienceCreate.dart';
import 'package:job_app/screens/user_screens/experience/experiencesscreen.dart';
import 'package:job_app/screens/user_screens/interest/interestScreen.dart';
import 'package:job_app/screens/user_screens/language/languageScreen.dart';
import 'package:job_app/screens/user_screens/skills/skillScreen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes:[
    AutoRoute(path: '/splash',page: SplashScreen,initial: true),
    // AutoRoute(path: '/home',page: Home,),
    AutoRoute(path: '/login',page: LoginPage,),
    AutoRoute(path:'/signup',page: Register),
    AutoRoute(path: '/forgot-password',page: ForgotScreen),
    AutoRoute(path: '/forgot-password-verify',page: ForgotScreenVerify),
    AutoRoute(path:'/job-detail/:id',page: JobDetailPage),
    AutoRoute(path:'/staffhome',page: DashBoard, ),
    AutoRoute(path: '/jobCategory',page: JobCategoryScreen),
    AutoRoute(path: '/job-create',page:JobCreateScreen),
    AutoRoute(path:'/staff-jobs',page:JobScreen),
    AutoRoute(path:'/staff-ads',page: AdvetisementScreen),
    AutoRoute(path:'/staff-idea',page:IdeaScreen ),

    AutoRoute(path:'/home',page:Home),
     
      
      AutoRoute(path: '/education',page: EducationScreen,fullscreenDialog: true),
      AutoRoute(path: '/experience',page:ExperiencesScreen),
      AutoRoute(path:'/skill',page: SkillScreen),
      AutoRoute(path: '/language',page: LanguageScreen),
      AutoRoute(path: '/certificate',page: CertificateScreen),
      AutoRoute(path: '/interest',page: InterestScreen),
      AutoRoute(path: '/create-experience',page: CreateExpereinceScreen)

    ])
  

    
  

class $AppRouter {}