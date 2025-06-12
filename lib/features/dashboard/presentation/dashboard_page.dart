import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/routing/app_router.dart';
import '../providers/dashboard_providers.dart';
import '../widgets/farm_card.dart';

@RoutePage()
class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  @override
  void initState() {
    super.initState();
    // Load farms when the page is initialized
    Future.microtask(() => ref.read(dashboardControllerProvider.notifier).loadFarms());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(dashboardControllerProvider);

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
                'Farm Areass',
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
              
              if (state.isLoading)
                const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              else if (state.errorMessage != null)
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Error: ${state.errorMessage}',
                          style: TextStyle(color: Theme.of(context).colorScheme.error),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            ref.read(dashboardControllerProvider.notifier).loadFarms();
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                )
              else if (state.farms.isEmpty)
                const Expanded(
                  child: Center(
                    child: Text('No farms available'),
                  ),
                )
              else
                // Farm Cards Grid
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: state.farms.length,
                    itemBuilder: (context, index) {
                      final farm = state.farms[index];
                      return FarmCard(
                        farmId: farm.id,
                        farmName: farm.name,
                        location: farm.location,
                        soilMoisture: farm.soilMoisture,
                        droughtLevel: farm.droughtLevel,
                        imageAsset: farm.imageAsset,
                        onTap: () => _navigateToFarmDetail(context, farm.id, farm.name),
                      );
                    },
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