import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnBoardingRoute.page, initial: true),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(
      page: BottomNavBar.page,
      children: [
        AutoRoute(page: Home.page),
        AutoRoute(page: ExploreRoute.page),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(page: Profile.page)
      ],
    ),
  ];
}
