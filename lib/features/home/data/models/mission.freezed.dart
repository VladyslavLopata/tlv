// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mission _$MissionFromJson(Map<String, dynamic> json) {
  return _Mission.fromJson(json);
}

/// @nodoc
mixin _$Mission {
// ignore: invalid_annotation_target
  @JsonKey(name: 'mission_name')
  String get name => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MissionCopyWith<Mission> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionCopyWith<$Res> {
  factory $MissionCopyWith(Mission value, $Res Function(Mission) then) =
      _$MissionCopyWithImpl<$Res, Mission>;
  @useResult
  $Res call({@JsonKey(name: 'mission_name') String name, String? details});
}

/// @nodoc
class _$MissionCopyWithImpl<$Res, $Val extends Mission>
    implements $MissionCopyWith<$Res> {
  _$MissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MissionCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory _$$_MissionCopyWith(
          _$_Mission value, $Res Function(_$_Mission) then) =
      __$$_MissionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'mission_name') String name, String? details});
}

/// @nodoc
class __$$_MissionCopyWithImpl<$Res>
    extends _$MissionCopyWithImpl<$Res, _$_Mission>
    implements _$$_MissionCopyWith<$Res> {
  __$$_MissionCopyWithImpl(_$_Mission _value, $Res Function(_$_Mission) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? details = freezed,
  }) {
    return _then(_$_Mission(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Mission implements _Mission {
  const _$_Mission(
      {@JsonKey(name: 'mission_name') required this.name, this.details});

  factory _$_Mission.fromJson(Map<String, dynamic> json) =>
      _$$_MissionFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'mission_name')
  final String name;
  @override
  final String? details;

  @override
  String toString() {
    return 'Mission(name: $name, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Mission &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MissionCopyWith<_$_Mission> get copyWith =>
      __$$_MissionCopyWithImpl<_$_Mission>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MissionToJson(
      this,
    );
  }
}

abstract class _Mission implements Mission {
  const factory _Mission(
      {@JsonKey(name: 'mission_name') required final String name,
      final String? details}) = _$_Mission;

  factory _Mission.fromJson(Map<String, dynamic> json) = _$_Mission.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'mission_name')
  String get name;
  @override
  String? get details;
  @override
  @JsonKey(ignore: true)
  _$$_MissionCopyWith<_$_Mission> get copyWith =>
      throw _privateConstructorUsedError;
}
