import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../core/constants/app_constants.dart';

class ChartsTab extends StatelessWidget {
  final String farmId;

  const ChartsTab({
    super.key,
    required this.farmId,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      child: Column(
        children: [
          // Soil Moisture Chart
          _buildChartCard(
            context,
            'Soil Moisture',
            'Last 24 hours',
            _generateMoistureData(),
            Colors.blue,
            '%',
          ),
          const SizedBox(height: 16),

          // Temperature Chart
          _buildChartCard(
            context,
            'Temperature',
            'Last 24 hours',
            _generateTemperatureData(),
            Colors.orange,
            '°C',
          ),
          const SizedBox(height: 16),

          // Humidity Chart
          _buildChartCard(
            context,
            'Humidity',
            'Last 24 hours',
            _generateHumidityData(),
            Colors.green,
            '%',
          ),
        ],
      ),
    );
  }

  Widget _buildChartCard(
    BuildContext context,
    String title,
    String subtitle,
    List<FlSpot> data,
    Color color,
    String unit,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${data.last.y.toStringAsFixed(1)}$unit',
                        style: TextStyle(
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 200,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval: 1,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey.withOpacity(0.2),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            '${value.toInt()}$unit',
                            style: const TextStyle(fontSize: 12),
                          );
                        },
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        interval: 4,
                        getTitlesWidget: (value, meta) {
                          final hour = value.toInt();
                          if (hour % 4 == 0) {
                            return Text(
                              '${hour.toString().padLeft(2, '0')}:00',
                              style: const TextStyle(fontSize: 10),
                            );
                          }
                          return const Text('');
                        },
                      ),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: data,
                      isCurved: true,
                      color: color,
                      barWidth: 3,
                      isStrokeCapRound: true,
                      dotData: const FlDotData(show: false),
                      belowBarData: BarAreaData(
                        show: true,
                        color: color.withOpacity(0.1),
                      ),
                    ),
                  ],
                  minX: 0,
                  maxX: 23,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<FlSpot> _generateMoistureData() {
    final random = Random();
    return List.generate(AppConstants.chartDataPoints, (index) {
      final baseValue = 70 + random.nextDouble() * 20; // 70-90%
      return FlSpot(index.toDouble(), baseValue);
    });
  }

  List<FlSpot> _generateTemperatureData() {
    final random = Random();
    return List.generate(AppConstants.chartDataPoints, (index) {
      final baseValue = 20 + random.nextDouble() * 10; // 20-30°C
      return FlSpot(index.toDouble(), baseValue);
    });
  }

  List<FlSpot> _generateHumidityData() {
    final random = Random();
    return List.generate(AppConstants.chartDataPoints, (index) {
      final baseValue = 60 + random.nextDouble() * 25; // 60-85%
      return FlSpot(index.toDouble(), baseValue);
    });
  }
} 