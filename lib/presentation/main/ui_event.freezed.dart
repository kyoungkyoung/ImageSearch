// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UiEventTearOff {
  const _$UiEventTearOff();

  ShowSnackBar showSnackBar(String message) {
    return ShowSnackBar(
      message,
    );
  }

  EndLoading endLoading() {
    return const EndLoading();
  }
}

/// @nodoc
const $UiEvent = _$UiEventTearOff();

/// @nodoc
mixin _$UiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function() endLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? endLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? endLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(EndLoading value) endLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(EndLoading value)? endLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(EndLoading value)? endLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiEventCopyWith<$Res> {
  factory $UiEventCopyWith(UiEvent value, $Res Function(UiEvent) then) =
      _$UiEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UiEventCopyWithImpl<$Res> implements $UiEventCopyWith<$Res> {
  _$UiEventCopyWithImpl(this._value, this._then);

  final UiEvent _value;
  // ignore: unused_field
  final $Res Function(UiEvent) _then;
}

/// @nodoc
abstract class $ShowSnackBarCopyWith<$Res> {
  factory $ShowSnackBarCopyWith(
          ShowSnackBar value, $Res Function(ShowSnackBar) then) =
      _$ShowSnackBarCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ShowSnackBarCopyWithImpl<$Res> extends _$UiEventCopyWithImpl<$Res>
    implements $ShowSnackBarCopyWith<$Res> {
  _$ShowSnackBarCopyWithImpl(
      ShowSnackBar _value, $Res Function(ShowSnackBar) _then)
      : super(_value, (v) => _then(v as ShowSnackBar));

  @override
  ShowSnackBar get _value => super._value as ShowSnackBar;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ShowSnackBar(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackBar implements ShowSnackBar {
  const _$ShowSnackBar(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UiEvent.showSnackBar(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShowSnackBar &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $ShowSnackBarCopyWith<ShowSnackBar> get copyWith =>
      _$ShowSnackBarCopyWithImpl<ShowSnackBar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function() endLoading,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? endLoading,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? endLoading,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(EndLoading value) endLoading,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(EndLoading value)? endLoading,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(EndLoading value)? endLoading,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class ShowSnackBar implements UiEvent {
  const factory ShowSnackBar(String message) = _$ShowSnackBar;

  String get message;
  @JsonKey(ignore: true)
  $ShowSnackBarCopyWith<ShowSnackBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndLoadingCopyWith<$Res> {
  factory $EndLoadingCopyWith(
          EndLoading value, $Res Function(EndLoading) then) =
      _$EndLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$EndLoadingCopyWithImpl<$Res> extends _$UiEventCopyWithImpl<$Res>
    implements $EndLoadingCopyWith<$Res> {
  _$EndLoadingCopyWithImpl(EndLoading _value, $Res Function(EndLoading) _then)
      : super(_value, (v) => _then(v as EndLoading));

  @override
  EndLoading get _value => super._value as EndLoading;
}

/// @nodoc

class _$EndLoading implements EndLoading {
  const _$EndLoading();

  @override
  String toString() {
    return 'UiEvent.endLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EndLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function() endLoading,
  }) {
    return endLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? endLoading,
  }) {
    return endLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function()? endLoading,
    required TResult orElse(),
  }) {
    if (endLoading != null) {
      return endLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar value) showSnackBar,
    required TResult Function(EndLoading value) endLoading,
  }) {
    return endLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(EndLoading value)? endLoading,
  }) {
    return endLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar value)? showSnackBar,
    TResult Function(EndLoading value)? endLoading,
    required TResult orElse(),
  }) {
    if (endLoading != null) {
      return endLoading(this);
    }
    return orElse();
  }
}

abstract class EndLoading implements UiEvent {
  const factory EndLoading() = _$EndLoading;
}
