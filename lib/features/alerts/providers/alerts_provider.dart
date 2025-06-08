import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../shared/models/alert.dart';

// Mock alert data
final alertsProvider = FutureProvider<List<Alert>>((ref) async {
  // Simulate API delay
  await Future.delayed(const Duration(milliseconds: 500));
  
  return [
    Alert(
      id: '1',
      title: 'Low Soil Moisture',
      description: 'Soil moisture in Farm 1 has dropped to 35%, below the safe threshold. Immediate irrigation is recommended.',
      severity: AlertSeverity.high,
      timestamp: DateTime.now().subtract(const Duration(hours: 1)),
      farmId: '1',
      fieldId: '1',
    ),
    Alert(
      id: '2',
      title: 'Low Soil Moisture',
      description: 'Soil moisture in Farm 2 has dropped to 40%, requires attention.',
      severity: AlertSeverity.medium,
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      farmId: '2',
      fieldId: '2',
    ),
    Alert(
      id: '3',
      title: 'Temperature Anomaly',
      description: 'Temperature in Farm 3 is too high, reaching 35°C.',
      severity: AlertSeverity.high,
      timestamp: DateTime.now().subtract(const Duration(hours: 3)),
      farmId: '3',
      fieldId: '3',
    ),
    Alert(
      id: '4',
      title: 'Low Soil Moisture',
      description: 'Soil moisture in Farm 4 has dropped to 25%, critical situation!',
      severity: AlertSeverity.critical,
      timestamp: DateTime.now().subtract(const Duration(hours: 4)),
      farmId: '4',
      fieldId: '4',
    ),
    Alert(
      id: '5',
      title: 'Device Status',
      description: 'Sensor data updates are normal.',
      severity: AlertSeverity.low,
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      farmId: '5',
      fieldId: '5',
    ),
  ];
});

// Filter state management
class AlertFilterNotifier extends StateNotifier<AlertSeverity?> {
  AlertFilterNotifier() : super(null);

  void setFilter(AlertSeverity? severity) {
    state = severity;
  }

  void clearFilter() {
    state = null;
  }
}

final alertFilterProvider = StateNotifierProvider<AlertFilterNotifier, AlertSeverity?>(
  (ref) => AlertFilterNotifier(),
); 