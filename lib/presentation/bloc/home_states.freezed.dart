// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  LoadingState loading() {
    return const LoadingState();
  }

  LoadedState loaded(List<Mission> missions) {
    return LoadedState(
      missions,
    );
  }

  CompletedState completed(List<Mission> missions) {
    return CompletedState(
      missions,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Mission> missions) loaded,
    required TResult Function(List<Mission> missions) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Mission> missions)? loaded,
    TResult Function(List<Mission> missions)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(CompletedState value) completed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(CompletedState value)? completed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Mission> missions) loaded,
    required TResult Function(List<Mission> missions) completed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Mission> missions)? loaded,
    TResult Function(List<Mission> missions)? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(CompletedState value) completed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(CompletedState value)? completed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements HomeState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class $LoadedStateCopyWith<$Res> {
  factory $LoadedStateCopyWith(
          LoadedState value, $Res Function(LoadedState) then) =
      _$LoadedStateCopyWithImpl<$Res>;
  $Res call({List<Mission> missions});
}

/// @nodoc
class _$LoadedStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $LoadedStateCopyWith<$Res> {
  _$LoadedStateCopyWithImpl(
      LoadedState _value, $Res Function(LoadedState) _then)
      : super(_value, (v) => _then(v as LoadedState));

  @override
  LoadedState get _value => super._value as LoadedState;

  @override
  $Res call({
    Object? missions = freezed,
  }) {
    return _then(LoadedState(
      missions == freezed
          ? _value.missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<Mission>,
    ));
  }
}

/// @nodoc

class _$LoadedState implements LoadedState {
  const _$LoadedState(this.missions);

  @override
  final List<Mission> missions;

  @override
  String toString() {
    return 'HomeState.loaded(missions: $missions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedState &&
            (identical(other.missions, missions) ||
                const DeepCollectionEquality()
                    .equals(other.missions, missions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(missions);

  @JsonKey(ignore: true)
  @override
  $LoadedStateCopyWith<LoadedState> get copyWith =>
      _$LoadedStateCopyWithImpl<LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Mission> missions) loaded,
    required TResult Function(List<Mission> missions) completed,
  }) {
    return loaded(missions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Mission> missions)? loaded,
    TResult Function(List<Mission> missions)? completed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(missions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(CompletedState value) completed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(CompletedState value)? completed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements HomeState {
  const factory LoadedState(List<Mission> missions) = _$LoadedState;

  List<Mission> get missions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedStateCopyWith<LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedStateCopyWith<$Res> {
  factory $CompletedStateCopyWith(
          CompletedState value, $Res Function(CompletedState) then) =
      _$CompletedStateCopyWithImpl<$Res>;
  $Res call({List<Mission> missions});
}

/// @nodoc
class _$CompletedStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $CompletedStateCopyWith<$Res> {
  _$CompletedStateCopyWithImpl(
      CompletedState _value, $Res Function(CompletedState) _then)
      : super(_value, (v) => _then(v as CompletedState));

  @override
  CompletedState get _value => super._value as CompletedState;

  @override
  $Res call({
    Object? missions = freezed,
  }) {
    return _then(CompletedState(
      missions == freezed
          ? _value.missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<Mission>,
    ));
  }
}

/// @nodoc

class _$CompletedState implements CompletedState {
  const _$CompletedState(this.missions);

  @override
  final List<Mission> missions;

  @override
  String toString() {
    return 'HomeState.completed(missions: $missions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompletedState &&
            (identical(other.missions, missions) ||
                const DeepCollectionEquality()
                    .equals(other.missions, missions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(missions);

  @JsonKey(ignore: true)
  @override
  $CompletedStateCopyWith<CompletedState> get copyWith =>
      _$CompletedStateCopyWithImpl<CompletedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Mission> missions) loaded,
    required TResult Function(List<Mission> missions) completed,
  }) {
    return completed(missions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Mission> missions)? loaded,
    TResult Function(List<Mission> missions)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(missions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(CompletedState value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(CompletedState value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class CompletedState implements HomeState {
  const factory CompletedState(List<Mission> missions) = _$CompletedState;

  List<Mission> get missions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletedStateCopyWith<CompletedState> get copyWith =>
      throw _privateConstructorUsedError;
}
