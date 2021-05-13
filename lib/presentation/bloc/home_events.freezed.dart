// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  ScrollExtentReachedEvent scrollExtentReached() {
    return const ScrollExtentReachedEvent();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() scrollExtentReached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? scrollExtentReached,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScrollExtentReachedEvent value)
        scrollExtentReached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScrollExtentReachedEvent value)? scrollExtentReached,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $ScrollExtentReachedEventCopyWith<$Res> {
  factory $ScrollExtentReachedEventCopyWith(ScrollExtentReachedEvent value,
          $Res Function(ScrollExtentReachedEvent) then) =
      _$ScrollExtentReachedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScrollExtentReachedEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $ScrollExtentReachedEventCopyWith<$Res> {
  _$ScrollExtentReachedEventCopyWithImpl(ScrollExtentReachedEvent _value,
      $Res Function(ScrollExtentReachedEvent) _then)
      : super(_value, (v) => _then(v as ScrollExtentReachedEvent));

  @override
  ScrollExtentReachedEvent get _value =>
      super._value as ScrollExtentReachedEvent;
}

/// @nodoc

class _$ScrollExtentReachedEvent implements ScrollExtentReachedEvent {
  const _$ScrollExtentReachedEvent();

  @override
  String toString() {
    return 'HomeEvent.scrollExtentReached()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ScrollExtentReachedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() scrollExtentReached,
  }) {
    return scrollExtentReached();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? scrollExtentReached,
    required TResult orElse(),
  }) {
    if (scrollExtentReached != null) {
      return scrollExtentReached();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScrollExtentReachedEvent value)
        scrollExtentReached,
  }) {
    return scrollExtentReached(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScrollExtentReachedEvent value)? scrollExtentReached,
    required TResult orElse(),
  }) {
    if (scrollExtentReached != null) {
      return scrollExtentReached(this);
    }
    return orElse();
  }
}

abstract class ScrollExtentReachedEvent implements HomeEvent {
  const factory ScrollExtentReachedEvent() = _$ScrollExtentReachedEvent;
}
