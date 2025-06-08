import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/routing/app_router.dart';
import '../widgets/farm_card.dart';

@RoutePage()
class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.appName),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              // Navigate to alerts page
              context.router.push(const AlertsRoute());
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              _handleLogout(context);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Farm Areas',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Select a farm to view details',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                ),
              ),
              const SizedBox(height: 16),
              
              // Farm Cards Grid
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    FarmCard(
                      farmId: '1',
                      farmName: 'Farm 1',
                      location: 'East Region',
                      soilMoisture: 75,
                      droughtLevel: 'Low',
                      imageAsset: 'assets/images/farm1.jpg',
                      onTap: () => _navigateToFarmDetail(context, '1', 'Farm 1'),
                    ),
                    FarmCard(
                      farmId: '2',
                      farmName: 'Farm 2',
                      location: 'South Region',
                      soilMoisture: 40,
                      droughtLevel: 'Medium',
                      imageAsset: 'assets/images/farm2.jpg',
                      onTap: () => _navigateToFarmDetail(context, '2', 'Farm 2'),
                    ),
                    FarmCard(
                      farmId: '3',
                      farmName: 'Farm 3',
                      location: 'West Region',
                      soilMoisture: 85,
                      droughtLevel: 'Low',
                      imageAsset: 'assets/images/farm3.jpg',
                      onTap: () => _navigateToFarmDetail(context, '3', 'Farm 3'),
                    ),
                    FarmCard(
                      farmId: '4',
                      farmName: 'Farm 4',
                      location: 'North Region',
                      soilMoisture: 25,
                      droughtLevel: 'High',
                      imageAsset: 'assets/images/farm4.jpg',
                      onTap: () => _navigateToFarmDetail(context, '4', 'Farm 4'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToFarmDetail(BuildContext context, String farmId, String farmName) {
    context.router.push(FarmDetailRoute(farmId: farmId, farmName: farmName));
  }

  void _handleLogout(BuildContext context) {
    // Navigate back to login
    context.router.replaceAll([const LoginRoute()]);
  }
} 