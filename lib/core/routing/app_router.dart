import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../features/auth/presentation/login_page.dart';
import '../../features/auth/presentation/register_page.dart';
import '../../features/dashboard/presentation/dashboard_page.dart';
import '../../features/farm_detail/presentation/farm_detail_page.dart';
import '../../features/alerts/presentation/alerts_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    // Auth routes
    AutoRoute(
      page: LoginRoute.page,
      path: '/login',
      initial: true,
    ),
    AutoRoute(
      page: RegisterRoute.page,
      path: '/register',
    ),
    
    // Main app routes
    AutoRoute(
      page: DashboardRoute.page,
      path: '/dashboard',
    ),
    AutoRoute(
      page: FarmDetailRoute.page,
      path: '/farm-detail',
    ),
    AutoRoute(
      page: AlertsRoute.page,
      path: '/alerts',
    ),
  ];
} 