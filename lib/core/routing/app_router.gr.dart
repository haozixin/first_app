// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AlertsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AlertsPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardPage(),
      );
    },
    FarmDetailRoute.name: (routeData) {
      final args = routeData.argsAs<FarmDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FarmDetailPage(
          key: args.key,
          farmId: args.farmId,
          farmName: args.farmName,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
  };
}

/// generated route for
/// [AlertsPage]
class AlertsRoute extends PageRouteInfo<void> {
  const AlertsRoute({List<PageRouteInfo>? children})
      : super(
          AlertsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AlertsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FarmDetailPage]
class FarmDetailRoute extends PageRouteInfo<FarmDetailRouteArgs> {
  FarmDetailRoute({
    Key? key,
    required String farmId,
    String? farmName,
    List<PageRouteInfo>? children,
  }) : super(
          FarmDetailRoute.name,
          args: FarmDetailRouteArgs(
            key: key,
            farmId: farmId,
            farmName: farmName,
          ),
          initialChildren: children,
        );

  static const String name = 'FarmDetailRoute';

  static const PageInfo<FarmDetailRouteArgs> page =
      PageInfo<FarmDetailRouteArgs>(name);
}

class FarmDetailRouteArgs {
  const FarmDetailRouteArgs({
    this.key,
    required this.farmId,
    this.farmName,
  });

  final Key? key;

  final String farmId;

  final String? farmName;

  @override
  String toString() {
    return 'FarmDetailRouteArgs{key: $key, farmId: $farmId, farmName: $farmName}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
