// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i22;
import 'package:auto_route/empty_router_widgets.dart' as _i13;
import 'package:flutter/cupertino.dart' as _i24;
import 'package:flutter/material.dart' as _i23;

import '../../screens/auth_screens/forgotpassword.dart' as _i4;
import '../../screens/auth_screens/forgotpasswordverify.dart' as _i5;
import '../../screens/auth_screens/loginscreen.dart' as _i2;
import '../../screens/auth_screens/signupscreen.dart' as _i3;
import '../../screens/home.dart' as _i14;
import '../../screens/jobDetailscreen.dart' as _i6;
import '../../screens/splashscreen.dart' as _i1;
import '../../screens/staff_screen/adsScreen.dart' as _i11;
import '../../screens/staff_screen/dashboard.dart' as _i7;
import '../../screens/staff_screen/ideas/ideaScreen.dart' as _i12;
import '../../screens/staff_screen/jobcategoryScreen.dart' as _i8;
import '../../screens/staff_screen/jobs/jobCreate.dart' as _i9;
import '../../screens/staff_screen/jobs/jobscreen.dart' as _i10;
import '../../screens/user_screens/certificates/certificateScreen.dart' as _i19;
import '../../screens/user_screens/education/educationscreen.dart' as _i15;
import '../../screens/user_screens/experience/ExperienceCreate.dart' as _i21;
import '../../screens/user_screens/experience/experiencesscreen.dart' as _i16;
import '../../screens/user_screens/interest/interestScreen.dart' as _i20;
import '../../screens/user_screens/language/languageScreen.dart' as _i18;
import '../../screens/user_screens/skills/skillScreen.dart' as _i17;
import '../model/job_model/job.dart' as _i25;

class AppRouter extends _i22.RootStackRouter {
  AppRouter([_i23.GlobalKey<_i23.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i22.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.LoginPage(),
      );
    },
    Register.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.Register(),
      );
    },
    ForgotScreen.name: (routeData) {
      final args = routeData.argsAs<ForgotScreenArgs>(
          orElse: () => const ForgotScreenArgs());
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ForgotScreen(key: args.key),
      );
    },
    ForgotScreenVerify.name: (routeData) {
      final args = routeData.argsAs<ForgotScreenVerifyArgs>(
          orElse: () => const ForgotScreenVerifyArgs());
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ForgotScreenVerify(key: args.key),
      );
    },
    JobDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<JobDetailRouteArgs>(
          orElse: () => JobDetailRouteArgs(id: pathParams.getInt('id')));
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.JobDetailPage(
          key: args.key,
          id: args.id,
          job: args.job,
        ),
      );
    },
    DashBoard.name: (routeData) {
      final args =
          routeData.argsAs<DashBoardArgs>(orElse: () => const DashBoardArgs());
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.DashBoard(key: args.key),
      );
    },
    JobCategoryScreen.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.JobCategoryScreen(),
      );
    },
    JobCreateScreen.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.JobCreateScreen(),
      );
    },
    JobScreen.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.JobScreen(),
      );
    },
    AdvetisementScreen.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.AdvetisementScreen(),
      );
    },
    IdeaScreen.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.IdeaScreen(),
      );
    },
    EmptyRouterRoute.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.EmptyRouterPage(),
      );
    },
    Home.name: (routeData) {
      final args = routeData.argsAs<HomeArgs>(orElse: () => const HomeArgs());
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i14.Home(key: args.key),
      );
    },
    EducationScreen.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i15.EducationScreen(),
      );
    },
    ExperiencesScreen.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.ExperiencesScreen(),
      );
    },
    SkillScreen.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.SkillScreen(),
      );
    },
    LanguageScreen.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.LanguageScreen(),
      );
    },
    CertificateScreen.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.CertificateScreen(),
      );
    },
    InterestScreen.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i20.InterestScreen(),
      );
    },
    CreateExpereinceScreen.name: (routeData) {
      return _i22.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i21.CreateExpereinceScreen(),
      );
    },
  };

  @override
  List<_i22.RouteConfig> get routes => [
        _i22.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i22.RouteConfig(
          SplashScreen.name,
          path: '/splash',
        ),
        _i22.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i22.RouteConfig(
          Register.name,
          path: '/signup',
        ),
        _i22.RouteConfig(
          ForgotScreen.name,
          path: '/forgot-password',
        ),
        _i22.RouteConfig(
          ForgotScreenVerify.name,
          path: '/forgot-password-verify',
        ),
        _i22.RouteConfig(
          JobDetailRoute.name,
          path: '/job-detail/:id',
        ),
        _i22.RouteConfig(
          DashBoard.name,
          path: '/staffhome',
        ),
        _i22.RouteConfig(
          JobCategoryScreen.name,
          path: '/jobCategory',
        ),
        _i22.RouteConfig(
          JobCreateScreen.name,
          path: '/job-create',
        ),
        _i22.RouteConfig(
          JobScreen.name,
          path: '/staff-jobs',
        ),
        _i22.RouteConfig(
          AdvetisementScreen.name,
          path: '/staff-ads',
        ),
        _i22.RouteConfig(
          IdeaScreen.name,
          path: '/staff-idea',
        ),
        _i22.RouteConfig(
          EmptyRouterRoute.name,
          path: '/home',
          children: [
            _i22.RouteConfig(
              '#redirect',
              path: '',
              parent: EmptyRouterRoute.name,
              redirectTo: 'home',
              fullMatch: true,
            ),
            _i22.RouteConfig(
              Home.name,
              path: 'home',
              parent: EmptyRouterRoute.name,
            ),
            _i22.RouteConfig(
              EducationScreen.name,
              path: 'education',
              parent: EmptyRouterRoute.name,
            ),
            _i22.RouteConfig(
              ExperiencesScreen.name,
              path: 'experience',
              parent: EmptyRouterRoute.name,
            ),
            _i22.RouteConfig(
              SkillScreen.name,
              path: 'skill',
              parent: EmptyRouterRoute.name,
            ),
            _i22.RouteConfig(
              LanguageScreen.name,
              path: 'language',
              parent: EmptyRouterRoute.name,
            ),
            _i22.RouteConfig(
              CertificateScreen.name,
              path: 'certificate',
              parent: EmptyRouterRoute.name,
            ),
            _i22.RouteConfig(
              InterestScreen.name,
              path: 'interest',
              parent: EmptyRouterRoute.name,
            ),
            _i22.RouteConfig(
              CreateExpereinceScreen.name,
              path: 'create-experience',
              parent: EmptyRouterRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i22.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/splash',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i22.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.Register]
class Register extends _i22.PageRouteInfo<void> {
  const Register()
      : super(
          Register.name,
          path: '/signup',
        );

  static const String name = 'Register';
}

/// generated route for
/// [_i4.ForgotScreen]
class ForgotScreen extends _i22.PageRouteInfo<ForgotScreenArgs> {
  ForgotScreen({_i24.Key? key})
      : super(
          ForgotScreen.name,
          path: '/forgot-password',
          args: ForgotScreenArgs(key: key),
        );

  static const String name = 'ForgotScreen';
}

class ForgotScreenArgs {
  const ForgotScreenArgs({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return 'ForgotScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.ForgotScreenVerify]
class ForgotScreenVerify extends _i22.PageRouteInfo<ForgotScreenVerifyArgs> {
  ForgotScreenVerify({_i24.Key? key})
      : super(
          ForgotScreenVerify.name,
          path: '/forgot-password-verify',
          args: ForgotScreenVerifyArgs(key: key),
        );

  static const String name = 'ForgotScreenVerify';
}

class ForgotScreenVerifyArgs {
  const ForgotScreenVerifyArgs({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return 'ForgotScreenVerifyArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.JobDetailPage]
class JobDetailRoute extends _i22.PageRouteInfo<JobDetailRouteArgs> {
  JobDetailRoute({
    _i24.Key? key,
    required int id,
    _i25.Jobs? job,
  }) : super(
          JobDetailRoute.name,
          path: '/job-detail/:id',
          args: JobDetailRouteArgs(
            key: key,
            id: id,
            job: job,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'JobDetailRoute';
}

class JobDetailRouteArgs {
  const JobDetailRouteArgs({
    this.key,
    required this.id,
    this.job,
  });

  final _i24.Key? key;

  final int id;

  final _i25.Jobs? job;

  @override
  String toString() {
    return 'JobDetailRouteArgs{key: $key, id: $id, job: $job}';
  }
}

/// generated route for
/// [_i7.DashBoard]
class DashBoard extends _i22.PageRouteInfo<DashBoardArgs> {
  DashBoard({_i24.Key? key})
      : super(
          DashBoard.name,
          path: '/staffhome',
          args: DashBoardArgs(key: key),
        );

  static const String name = 'DashBoard';
}

class DashBoardArgs {
  const DashBoardArgs({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return 'DashBoardArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.JobCategoryScreen]
class JobCategoryScreen extends _i22.PageRouteInfo<void> {
  const JobCategoryScreen()
      : super(
          JobCategoryScreen.name,
          path: '/jobCategory',
        );

  static const String name = 'JobCategoryScreen';
}

/// generated route for
/// [_i9.JobCreateScreen]
class JobCreateScreen extends _i22.PageRouteInfo<void> {
  const JobCreateScreen()
      : super(
          JobCreateScreen.name,
          path: '/job-create',
        );

  static const String name = 'JobCreateScreen';
}

/// generated route for
/// [_i10.JobScreen]
class JobScreen extends _i22.PageRouteInfo<void> {
  const JobScreen()
      : super(
          JobScreen.name,
          path: '/staff-jobs',
        );

  static const String name = 'JobScreen';
}

/// generated route for
/// [_i11.AdvetisementScreen]
class AdvetisementScreen extends _i22.PageRouteInfo<void> {
  const AdvetisementScreen()
      : super(
          AdvetisementScreen.name,
          path: '/staff-ads',
        );

  static const String name = 'AdvetisementScreen';
}

/// generated route for
/// [_i12.IdeaScreen]
class IdeaScreen extends _i22.PageRouteInfo<void> {
  const IdeaScreen()
      : super(
          IdeaScreen.name,
          path: '/staff-idea',
        );

  static const String name = 'IdeaScreen';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class EmptyRouterRoute extends _i22.PageRouteInfo<void> {
  const EmptyRouterRoute({List<_i22.PageRouteInfo>? children})
      : super(
          EmptyRouterRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'EmptyRouterRoute';
}

/// generated route for
/// [_i14.Home]
class Home extends _i22.PageRouteInfo<HomeArgs> {
  Home({_i24.Key? key})
      : super(
          Home.name,
          path: 'home',
          args: HomeArgs(key: key),
        );

  static const String name = 'Home';
}

class HomeArgs {
  const HomeArgs({this.key});

  final _i24.Key? key;

  @override
  String toString() {
    return 'HomeArgs{key: $key}';
  }
}

/// generated route for
/// [_i15.EducationScreen]
class EducationScreen extends _i22.PageRouteInfo<void> {
  const EducationScreen()
      : super(
          EducationScreen.name,
          path: 'education',
        );

  static const String name = 'EducationScreen';
}

/// generated route for
/// [_i16.ExperiencesScreen]
class ExperiencesScreen extends _i22.PageRouteInfo<void> {
  const ExperiencesScreen()
      : super(
          ExperiencesScreen.name,
          path: 'experience',
        );

  static const String name = 'ExperiencesScreen';
}

/// generated route for
/// [_i17.SkillScreen]
class SkillScreen extends _i22.PageRouteInfo<void> {
  const SkillScreen()
      : super(
          SkillScreen.name,
          path: 'skill',
        );

  static const String name = 'SkillScreen';
}

/// generated route for
/// [_i18.LanguageScreen]
class LanguageScreen extends _i22.PageRouteInfo<void> {
  const LanguageScreen()
      : super(
          LanguageScreen.name,
          path: 'language',
        );

  static const String name = 'LanguageScreen';
}

/// generated route for
/// [_i19.CertificateScreen]
class CertificateScreen extends _i22.PageRouteInfo<void> {
  const CertificateScreen()
      : super(
          CertificateScreen.name,
          path: 'certificate',
        );

  static const String name = 'CertificateScreen';
}

/// generated route for
/// [_i20.InterestScreen]
class InterestScreen extends _i22.PageRouteInfo<void> {
  const InterestScreen()
      : super(
          InterestScreen.name,
          path: 'interest',
        );

  static const String name = 'InterestScreen';
}

/// generated route for
/// [_i21.CreateExpereinceScreen]
class CreateExpereinceScreen extends _i22.PageRouteInfo<void> {
  const CreateExpereinceScreen()
      : super(
          CreateExpereinceScreen.name,
          path: 'create-experience',
        );

  static const String name = 'CreateExpereinceScreen';
}
