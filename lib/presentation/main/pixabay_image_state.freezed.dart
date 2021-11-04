// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pixabay_image_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PixabayImageState _$PixabayImageStateFromJson(Map<String, dynamic> json) {
  return _PixabayImageState.fromJson(json);
}

/// @nodoc
class _$PixabayImageStateTearOff {
  const _$PixabayImageStateTearOff();

  _PixabayImageState call(
      {List<PixabayImage> pixabayImageList = const [],
      bool isLoading = false}) {
    return _PixabayImageState(
      pixabayImageList: pixabayImageList,
      isLoading: isLoading,
    );
  }

  PixabayImageState fromJson(Map<String, Object?> json) {
    return PixabayImageState.fromJson(json);
  }
}

/// @nodoc
const $PixabayImageState = _$PixabayImageStateTearOff();

/// @nodoc
mixin _$PixabayImageState {
  List<PixabayImage> get pixabayImageList => throw _privateConstructorUsedError;

  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PixabayImageStateCopyWith<PixabayImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PixabayImageStateCopyWith<$Res> {
  factory $PixabayImageStateCopyWith(
          PixabayImageState value, $Res Function(PixabayImageState) then) =
      _$PixabayImageStateCopyWithImpl<$Res>;

  $Res call({List<PixabayImage> pixabayImageList, bool isLoading});
}

/// @nodoc
class _$PixabayImageStateCopyWithImpl<$Res>
    implements $PixabayImageStateCopyWith<$Res> {
  _$PixabayImageStateCopyWithImpl(this._value, this._then);

  final PixabayImageState _value;

  // ignore: unused_field
  final $Res Function(PixabayImageState) _then;

  @override
  $Res call({
    Object? pixabayImageList = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      pixabayImageList: pixabayImageList == freezed
          ? _value.pixabayImageList
          : pixabayImageList // ignore: cast_nullable_to_non_nullable
              as List<PixabayImage>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PixabayImageStateCopyWith<$Res>
    implements $PixabayImageStateCopyWith<$Res> {
  factory _$PixabayImageStateCopyWith(
          _PixabayImageState value, $Res Function(_PixabayImageState) then) =
      __$PixabayImageStateCopyWithImpl<$Res>;

  @override
  $Res call({List<PixabayImage> pixabayImageList, bool isLoading});
}

/// @nodoc
class __$PixabayImageStateCopyWithImpl<$Res>
    extends _$PixabayImageStateCopyWithImpl<$Res>
    implements _$PixabayImageStateCopyWith<$Res> {
  __$PixabayImageStateCopyWithImpl(
      _PixabayImageState _value, $Res Function(_PixabayImageState) _then)
      : super(_value, (v) => _then(v as _PixabayImageState));

  @override
  _PixabayImageState get _value => super._value as _PixabayImageState;

  @override
  $Res call({
    Object? pixabayImageList = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_PixabayImageState(
      pixabayImageList: pixabayImageList == freezed
          ? _value.pixabayImageList
          : pixabayImageList // ignore: cast_nullable_to_non_nullable
              as List<PixabayImage>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PixabayImageState implements _PixabayImageState {
  _$_PixabayImageState(
      {this.pixabayImageList = const [], this.isLoading = false});

  factory _$_PixabayImageState.fromJson(Map<String, dynamic> json) =>
      _$$_PixabayImageStateFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<PixabayImage> pixabayImageList;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'PixabayImageState(pixabayImageList: $pixabayImageList, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PixabayImageState &&
            const DeepCollectionEquality()
                .equals(other.pixabayImageList, pixabayImageList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(pixabayImageList), isLoading);

  @JsonKey(ignore: true)
  @override
  _$PixabayImageStateCopyWith<_PixabayImageState> get copyWith =>
      __$PixabayImageStateCopyWithImpl<_PixabayImageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PixabayImageStateToJson(this);
  }
}

abstract class _PixabayImageState implements PixabayImageState {
  factory _PixabayImageState(
      {List<PixabayImage> pixabayImageList,
      bool isLoading}) = _$_PixabayImageState;

  factory _PixabayImageState.fromJson(Map<String, dynamic> json) =
      _$_PixabayImageState.fromJson;

  @override
  List<PixabayImage> get pixabayImageList;

  @override
  bool get isLoading;

  @override
  @JsonKey(ignore: true)
  _$PixabayImageStateCopyWith<_PixabayImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
