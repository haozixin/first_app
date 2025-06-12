class Farm {
  final String id;
  final String name;
  final String location;
  final double soilMoisture;
  final String droughtLevel;
  final String imageAsset;

  const Farm({
    required this.id,
    required this.name,
    required this.location,
    required this.soilMoisture,
    required this.droughtLevel,
    required this.imageAsset,
  });

  factory Farm.fromJson(Map<String, dynamic> json) {
    return Farm(
      id: json['id'] as String,
      name: json['name'] as String,
      location: json['location'] as String,
      soilMoisture: (json['soilMoisture'] as num).toDouble(),
      droughtLevel: json['droughtLevel'] as String,
      imageAsset: json['imageAsset'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'location': location,
      'soilMoisture': soilMoisture,
      'droughtLevel': droughtLevel,
      'imageAsset': imageAsset,
    };
  }
} 