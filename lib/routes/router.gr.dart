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
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:auto_route/empty_router_widgets.dart' as _i11;
import 'package:flutter/cupertino.dart' as _i21;
import 'package:flutter/material.dart' as _i20;

import '../model/job_model/job.dart' as _i22;
import '../screens/auth_screens/forgotpassword.dart' as _i4;
import '../screens/auth_screens/forgotpasswordverify.dart' as _i5;
import '../screens/auth_screens/loginscreen.dart' as _i2;
import '../screens/auth_screens/signupscreen.dart' as _i3;
import '../screens/home.dart' as _i12;
import '../screens/jobDetailscreen.dart' as _i6;
import '../screens/splashscreen.dart' as _i1;
import '../screens/staff_screen/adsScreen.dart' as _i10;
import '../screens/staff_screen/dashboard.dart' as _i7;
import '../screens/staff_screen/jobcategoryScreen.dart' as _i8;
import '../screens/staff_screen/jobscreen.dart' as _i9;
import '../screens/user_screens/certificates/certificateScreen.dart' as _i17;
import '../screens/user_screens/education/educationscreen.dart' as _i13;
import '../screens/user_screens/experience/experiencesscreen.dart' as _i14;
import '../screens/user_screens/interest/interestScreen.dart' as _i18;
import '../screens/user_screens/language/languageScreen.dart' as _i16;
import '../screens/user_screens/skills/skillScreen.dart' as _i15;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.LoginPage(),
      );
    },
    Register.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.Register(),
      );
    },
    ForgotScreen.name: (routeData) {
      final args = routeData.argsAs<ForgotScreenArgs>(
          orElse: () => const ForgotScreenArgs());
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ForgotScreen(key: args.key),
      );
    },
    ForgotScreenVerify.name: (routeData) {
      final args = routeData.argsAs<ForgotScreenVerifyArgs>(
          orElse: () => const ForgotScreenVerifyArgs());
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.ForgotScreenVerify(key: args.key),
      );
    },
    JobDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<JobDetailRouteArgs>(
          orElse: () => JobDetailRouteArgs(id: pathParams.getInt('id')));
      return _i19.MaterialPageX<dynamic>(
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
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.DashBoard(key: args.key),
      );
    },
    JobCategoryScreen.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.JobCategoryScreen(),
      );
    },
    JobScreen.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.JobScreen(),
      );
    },
    AdvetisementScreen.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.AdvetisementScreen(),
      );
    },
    EmptyRouterRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.EmptyRouterPage(),
      );
    },
    Home.name: (routeData) {
      final args = routeData.argsAs<HomeArgs>(orElse: () => const HomeArgs());
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.Home(key: args.key),
      );
    },
    EducationScreen.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.EducationScreen(),
        fullscreenDialog: true,
      );
    },
    ExperiencesScreen.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.ExperiencesScreen(),
      );
    },
    SkillScreen.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.SkillScreen(),
      );
    },
    LanguageScreen.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.LanguageScreen(),
      );
    },
    CertificateScreen.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.CertificateScreen(),
      );
    },
    InterestScreen.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.InterestScreen(),
      );
    },
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        _i19.RouteConfig(
          SplashScreen.name,
          path: '/splash',
        ),
        _i19.RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        _i19.RouteConfig(
          Register.name,
          path: '/signup',
        ),
        _i19.RouteConfig(
          ForgotScreen.name,
          path: '/forgot-password',
        ),
        _i19.RouteConfig(
          ForgotScreenVerify.name,
          path: '/forgot-password-verify',
        ),
        _i19.RouteConfig(
          JobDetailRoute.name,
          path: '/job-detail/:id',
        ),
        _i19.RouteConfig(
          DashBoard.name,
          path: '/staffhome',
        ),
        _i19.RouteConfig(
          JobCategoryScreen.name,
          path: '/jobCategory',
        ),
        _i19.RouteConfig(
          JobScreen.name,
          path: '/staff-jobs',
        ),
        _i19.RouteConfig(
          AdvetisementScreen.name,
          path: '/staff-ads',
        ),
        _i19.RouteConfig(
          EmptyRouterRoute.name,
          path: '/home',
          children: [
            _i19.RouteConfig(
              Home.name,
              path: '',
              parent: EmptyRouterRoute.name,
            ),
            _i19.RouteConfig(
              EducationScreen.name,
              path: 'education',
              parent: EmptyRouterRoute.name,
            ),
            _i19.RouteConfig(
              ExperiencesScreen.name,
              path: 'experience',
              parent: EmptyRouterRoute.name,
            ),
            _i19.RouteConfig(
              SkillScreen.name,
              path: 'skill',
              parent: EmptyRouterRoute.name,
            ),
            _i19.RouteConfig(
              LanguageScreen.name,
              path: 'language',
              parent: EmptyRouterRoute.name,
            ),
            _i19.RouteConfig(
              CertificateScreen.name,
              path: 'certificate',
              parent: EmptyRouterRoute.name,
            ),
            _i19.RouteConfig(
              InterestScreen.name,
              path: 'interest',
              parent: EmptyRouterRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i19.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/splash',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.Register]
class Register extends _i19.PageRouteInfo<void> {
  const Register()
      : super(
          Register.name,
          path: '/signup',
        );

  static const String name = 'Register';
}

/// generated route for
/// [_i4.ForgotScreen]
class ForgotScreen extends _i19.PageRouteInfo<ForgotScreenArgs> {
  ForgotScreen({_i21.Key? key})
      : super(
          ForgotScreen.name,
          path: '/forgot-password',
          args: ForgotScreenArgs(key: key),
        );

  static const String name = 'ForgotScreen';
}

class ForgotScreenArgs {
  const ForgotScreenArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'ForgotScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.ForgotScreenVerify]
class ForgotScreenVerify extends _i19.PageRouteInfo<ForgotScreenVerifyArgs> {
  ForgotScreenVerify({_i21.Key? key})
      : super(
          ForgotScreenVerify.name,
          path: '/forgot-password-verify',
          args: ForgotScreenVerifyArgs(key: key),
        );

  static const String name = 'ForgotScreenVerify';
}

class ForgotScreenVerifyArgs {
  const ForgotScreenVerifyArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'ForgotScreenVerifyArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.JobDetailPage]
class JobDetailRoute extends _i19.PageRouteInfo<JobDetailRouteArgs> {
  JobDetailRoute({
    _i21.Key? key,
    required int id,
    _i22.Jobs? job,
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

  final _i21.Key? key;

  final int id;

  final _i22.Jobs? job;

  @override
  String toString() {
    return 'JobDetailRouteArgs{key: $key, id: $id, job: $job}';
  }
}

/// generated route for
/// [_i7.DashBoard]
class DashBoard extends _i19.PageRouteInfo<DashBoardArgs> {
  DashBoard({_i21.Key? key})
      : super(
          DashBoard.name,
          path: '/staffhome',
          args: DashBoardArgs(key: key),
        );

  static const String name = 'DashBoard';
}

class DashBoardArgs {
  const DashBoardArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'DashBoardArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.JobCategoryScreen]
class JobCategoryScreen extends _i19.PageRouteInfo<void> {
  const JobCategoryScreen()
      : super(
          JobCategoryScreen.name,
          path: '/jobCategory',
        );

  static const String name = 'JobCategoryScreen';
}

/// generated route for
/// [_i9.JobScreen]
class JobScreen extends _i19.PageRouteInfo<void> {
  const JobScreen()
      : super(
          JobScreen.name,
          path: '/staff-jobs',
        );

  static const String name = 'JobScreen';
}

/// generated route for
/// [_i10.AdvetisementScreen]
class AdvetisementScreen extends _i19.PageRouteInfo<void> {
  const AdvetisementScreen()
      : super(
          AdvetisementScreen.name,
          path: '/staff-ads',
        );

  static const String name = 'AdvetisementScreen';
}

/// generated route for
/// [_i11.EmptyRouterPage]
class EmptyRouterRoute extends _i19.PageRouteInfo<void> {
  const EmptyRouterRoute({List<_i19.PageRouteInfo>? children})
      : super(
          EmptyRouterRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'EmptyRouterRoute';
}

/// generated route for
/// [_i12.Home]
class Home extends _i19.PageRouteInfo<HomeArgs> {
  Home({_i21.Key? key})
      : super(
          Home.name,
          path: '',
          args: HomeArgs(key: key),
        );

  static const String name = 'Home';
}

class HomeArgs {
  const HomeArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'HomeArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.EducationScreen]
class EducationScreen extends _i19.PageRouteInfo<void> {
  const EducationScreen()
      : super(
          EducationScreen.name,
          path: 'education',
        );

  static const String name = 'EducationScreen';
}

/// generated route for
/// [_i14.ExperiencesScreen]
class ExperiencesScreen extends _i19.PageRouteInfo<void> {
  const ExperiencesScreen()
      : super(
          ExperiencesScreen.name,
          path: 'experience',
        );

  static const String name = 'ExperiencesScreen';
}

/// generated route for
/// [_i15.SkillScreen]
class SkillScreen extends _i19.PageRouteInfo<void> {
  const SkillScreen()
      : super(
          SkillScreen.name,
          path: 'skill',
        );

  static const String name = 'SkillScreen';
}

/// generated route for
/// [_i16.LanguageScreen]
class LanguageScreen extends _i19.PageRouteInfo<void> {
  const LanguageScreen()
      : super(
          LanguageScreen.name,
          path: 'language',
        );

  static const String name = 'LanguageScreen';
}

/// generated route for
/// [_i17.CertificateScreen]
class CertificateScreen extends _i19.PageRouteInfo<void> {
  const CertificateScreen()
      : super(
          CertificateScreen.name,
          path: 'certificate',
        );

  static const String name = 'CertificateScreen';
}

/// generated route for
/// [_i18.InterestScreen]
class InterestScreen extends _i19.PageRouteInfo<void> {
  const InterestScreen()
      : super(
          InterestScreen.name,
          path: 'interest',
        );

  static const String name = 'InterestScreen';
}
