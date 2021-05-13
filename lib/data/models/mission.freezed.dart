// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MissionModelTearOff {
  const _$MissionModelTearOff();

  _MissionModel call({required String name, required String? details}) {
    return _MissionModel(
      name: name,
      details: details,
    );
  }
}

/// @nodoc
const $MissionModel = _$MissionModelTearOff();

/// @nodoc
mixin _$MissionModel {
  String get name => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MissionModelCopyWith<MissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionModelCopyWith<$Res> {
  factory $MissionModelCopyWith(
          MissionModel value, $Res Function(MissionModel) then) =
      _$MissionModelCopyWithImpl<$Res>;
  $Res call({String name, String? details});
}

/// @nodoc
class _$MissionModelCopyWithImpl<$Res> implements $MissionModelCopyWith<$Res> {
  _$MissionModelCopyWithImpl(this._value, this._then);

  final MissionModel _value;
  // ignore: unused_field
  final $Res Function(MissionModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MissionModelCopyWith<$Res>
    implements $MissionModelCopyWith<$Res> {
  factory _$MissionModelCopyWith(
          _MissionModel value, $Res Function(_MissionModel) then) =
      __$MissionModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String? details});
}

/// @nodoc
class __$MissionModelCopyWithImpl<$Res> extends _$MissionModelCopyWithImpl<$Res>
    implements _$MissionModelCopyWith<$Res> {
  __$MissionModelCopyWithImpl(
      _MissionModel _value, $Res Function(_MissionModel) _then)
      : super(_value, (v) => _then(v as _MissionModel));

  @override
  _MissionModel get _value => super._value as _MissionModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? details = freezed,
  }) {
    return _then(_MissionModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MissionModel implements _MissionModel {
  const _$_MissionModel({required this.name, required this.details});

  @override
  final String name;
  @override
  final String? details;

  @override
  String toString() {
    return 'MissionModel(name: $name, details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MissionModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  _$MissionModelCopyWith<_MissionModel> get copyWith =>
      __$MissionModelCopyWithImpl<_MissionModel>(this, _$identity);
}

abstract class _MissionModel implements MissionModel {
  const factory _MissionModel(
      {required String name, required String? details}) = _$_MissionModel;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MissionModelCopyWith<_MissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
