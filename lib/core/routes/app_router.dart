import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wake_me_up/core/routes/app_router_paths.dart';
import 'package:wake_me_up/ui/pages/home/home_page.dart';
import 'package:wake_me_up/ui/pages/splash/splash_page.dart';

class AppRouter {
  AppRouter._();

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    initialLocation: AppRouterPaths.splash,
    navigatorKey: navigatorKey,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        parentNavigatorKey: navigatorKey,
        path: AppRouterPaths.splash,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return MaterialPage(
            key: state.pageKey,
            child: const SplashPage(),
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: navigatorKey,
        path: AppRouterPaths.home,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return MaterialPage(
            key: state.pageKey,
            child: const HomePage(),
          );
        },
      ),
    ],
  );
}
