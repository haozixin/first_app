// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Farm _$FarmFromJson(Map<String, dynamic> json) {
  return _Farm.fromJson(json);
}

/// @nodoc
mixin _$Farm {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  double get soilMoisture => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  String get droughtLevel => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this Farm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Farm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FarmCopyWith<Farm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmCopyWith<$Res> {
  factory $FarmCopyWith(Farm value, $Res Function(Farm) then) =
      _$FarmCopyWithImpl<$Res, Farm>;
  @useResult
  $Res call(
      {String id,
      String name,
      String location,
      double soilMoisture,
      double temperature,
      double humidity,
      String droughtLevel,
      String imageUrl});
}

/// @nodoc
class _$FarmCopyWithImpl<$Res, $Val extends Farm>
    implements $FarmCopyWith<$Res> {
  _$FarmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Farm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
    Object? soilMoisture = null,
    Object? temperature = null,
    Object? humidity = null,
    Object? droughtLevel = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      soilMoisture: null == soilMoisture
          ? _value.soilMoisture
          : soilMoisture // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      droughtLevel: null == droughtLevel
          ? _value.droughtLevel
          : droughtLevel // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FarmImplCopyWith<$Res> implements $FarmCopyWith<$Res> {
  factory _$$FarmImplCopyWith(
          _$FarmImpl value, $Res Function(_$FarmImpl) then) =
      __$$FarmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String location,
      double soilMoisture,
      double temperature,
      double humidity,
      String droughtLevel,
      String imageUrl});
}

/// @nodoc
class __$$FarmImplCopyWithImpl<$Res>
    extends _$FarmCopyWithImpl<$Res, _$FarmImpl>
    implements _$$FarmImplCopyWith<$Res> {
  __$$FarmImplCopyWithImpl(_$FarmImpl _value, $Res Function(_$FarmImpl) _then)
      : super(_value, _then);

  /// Create a copy of Farm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
    Object? soilMoisture = null,
    Object? temperature = null,
    Object? humidity = null,
    Object? droughtLevel = null,
    Object? imageUrl = null,
  }) {
    return _then(_$FarmImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      soilMoisture: null == soilMoisture
          ? _value.soilMoisture
          : soilMoisture // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      droughtLevel: null == droughtLevel
          ? _value.droughtLevel
          : droughtLevel // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FarmImpl implements _Farm {
  const _$FarmImpl(
      {required this.id,
      required this.name,
      required this.location,
      required this.soilMoisture,
      required this.temperature,
      required this.humidity,
      required this.droughtLevel,
      required this.imageUrl});

  factory _$FarmImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String location;
  @override
  final double soilMoisture;
  @override
  final double temperature;
  @override
  final double humidity;
  @override
  final String droughtLevel;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'Farm(id: $id, name: $name, location: $location, soilMoisture: $soilMoisture, temperature: $temperature, humidity: $humidity, droughtLevel: $droughtLevel, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.soilMoisture, soilMoisture) ||
                other.soilMoisture == soilMoisture) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.droughtLevel, droughtLevel) ||
                other.droughtLevel == droughtLevel) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, location, soilMoisture,
      temperature, humidity, droughtLevel, imageUrl);

  /// Create a copy of Farm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmImplCopyWith<_$FarmImpl> get copyWith =>
      __$$FarmImplCopyWithImpl<_$FarmImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmImplToJson(
      this,
    );
  }
}

abstract class _Farm implements Farm {
  const factory _Farm(
      {required final String id,
      required final String name,
      required final String location,
      required final double soilMoisture,
      required final double temperature,
      required final double humidity,
      required final String droughtLevel,
      required final String imageUrl}) = _$FarmImpl;

  factory _Farm.fromJson(Map<String, dynamic> json) = _$FarmImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get location;
  @override
  double get soilMoisture;
  @override
  double get temperature;
  @override
  double get humidity;
  @override
  String get droughtLevel;
  @override
  String get imageUrl;

  /// Create a copy of Farm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FarmImplCopyWith<_$FarmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
