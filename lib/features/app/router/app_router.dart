import 'package:auto_route/auto_route.dart';
import 'package:giga_chad_starter/features/app/session_scope.dart';
import 'package:giga_chad_starter/features/app/view/screens/splash_screen.dart';
import 'package:giga_chad_starter/features/auth/auth_flow.dart';
import 'package:giga_chad_starter/features/auth/view/screens/login_screen.dart';
import 'package:giga_chad_starter/features/auth/view/screens/register_screen.dart';
import 'package:giga_chad_starter/features/home/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/splash',
          page: SplashRoute.page,
          type: const RouteType.cupertino(),
        ),
        AutoRoute(
          path: '/session',
          page: SplashRoute.page,
          type: const RouteType.cupertino(),
          children: [
            /// unauthorized zone
            AutoRoute(
              path: '/auth',
              page: AuthFlowRoute.page,
              type: const RouteType.cupertino(),
              children: [
                AutoRoute(
                  path: 'login',
                  page: LoginRoute.page,
                  type: const RouteType.cupertino(),
                ),
                AutoRoute(
                  path: 'register',
                  page: RegisterRoute.page,
                  type: const RouteType.cupertino(),
                ),
              ],
            ),

            /// authorized zone
            AutoRoute(
              path: '/user',
              page: UserScopeRoute.page,
              children: const  [],
            )
          ],
        ),
      ];
}
