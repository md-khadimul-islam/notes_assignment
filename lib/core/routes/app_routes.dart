import 'package:care_tutors_assignment/core/routes/app_routes_const.dart';
import 'package:care_tutors_assignment/presentation/login/login.dart';
import 'package:care_tutors_assignment/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/registration/registration.dart';

class AppRoutes {
  AppRoutes._();

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
          name: AppRoutesConst.splash,
          path: '/',
          pageBuilder: (context, state) =>
              const MaterialPage(child: SplashScreen())),
      GoRoute(
          name: AppRoutesConst.login,
          path: '/login',
          pageBuilder: (context, state) =>
              const MaterialPage(child: LoginScreen())),
      GoRoute(
          name: AppRoutesConst.register,
          path: '/register',
          pageBuilder: (context, state) =>
              const MaterialPage(child: RegistrationScreen()))
    ],
  );
}
