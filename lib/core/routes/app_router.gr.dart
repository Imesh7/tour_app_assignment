// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:test/features/chat/ui/chat_screen.dart' as _i2;
import 'package:test/features/explore/ui/explore_screen.dart' as _i3;
import 'package:test/features/home/home.dart' as _i4;
import 'package:test/features/login/ui/login_screen.dart' as _i5;
import 'package:test/features/onboarding/ui/onboarding.dart' as _i6;
import 'package:test/features/profile/profile.dart' as _i7;
import 'package:test/features/utils/bottom_nav_bar/bottom_nav_bar.dart' as _i1;

/// generated route for
/// [_i1.BottomNavBar]
class BottomNavBar extends _i8.PageRouteInfo<void> {
  const BottomNavBar({List<_i8.PageRouteInfo>? children})
    : super(BottomNavBar.name, initialChildren: children);

  static const String name = 'BottomNavBar';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.BottomNavBar();
    },
  );
}

/// generated route for
/// [_i2.ChatScreen]
class ChatRoute extends _i8.PageRouteInfo<void> {
  const ChatRoute({List<_i8.PageRouteInfo>? children})
    : super(ChatRoute.name, initialChildren: children);

  static const String name = 'ChatRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.ChatScreen();
    },
  );
}

/// generated route for
/// [_i3.ExploreScreen]
class ExploreRoute extends _i8.PageRouteInfo<void> {
  const ExploreRoute({List<_i8.PageRouteInfo>? children})
    : super(ExploreRoute.name, initialChildren: children);

  static const String name = 'ExploreRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.ExploreScreen();
    },
  );
}

/// generated route for
/// [_i4.Home]
class Home extends _i8.PageRouteInfo<void> {
  const Home({List<_i8.PageRouteInfo>? children})
    : super(Home.name, initialChildren: children);

  static const String name = 'Home';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.Home();
    },
  );
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.LoginScreen();
    },
  );
}

/// generated route for
/// [_i6.OnBoardingScreen]
class OnBoardingRoute extends _i8.PageRouteInfo<void> {
  const OnBoardingRoute({List<_i8.PageRouteInfo>? children})
    : super(OnBoardingRoute.name, initialChildren: children);

  static const String name = 'OnBoardingRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.OnBoardingScreen();
    },
  );
}

/// generated route for
/// [_i7.Profile]
class Profile extends _i8.PageRouteInfo<void> {
  const Profile({List<_i8.PageRouteInfo>? children})
    : super(Profile.name, initialChildren: children);

  static const String name = 'Profile';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.Profile();
    },
  );
}
