// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubHeaders {
  String? get etag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubHeadersCopyWith<GithubHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubHeadersCopyWith<$Res> {
  factory $GithubHeadersCopyWith(
          GithubHeaders value, $Res Function(GithubHeaders) then) =
      _$GithubHeadersCopyWithImpl<$Res>;
  $Res call({String? etag});
}

/// @nodoc
class _$GithubHeadersCopyWithImpl<$Res>
    implements $GithubHeadersCopyWith<$Res> {
  _$GithubHeadersCopyWithImpl(this._value, this._then);

  final GithubHeaders _value;
  // ignore: unused_field
  final $Res Function(GithubHeaders) _then;

  @override
  $Res call({
    Object? etag = freezed,
  }) {
    return _then(_value.copyWith(
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GithubHeadersCopyWith<$Res>
    implements $GithubHeadersCopyWith<$Res> {
  factory _$$_GithubHeadersCopyWith(
          _$_GithubHeaders value, $Res Function(_$_GithubHeaders) then) =
      __$$_GithubHeadersCopyWithImpl<$Res>;
  @override
  $Res call({String? etag});
}

/// @nodoc
class __$$_GithubHeadersCopyWithImpl<$Res>
    extends _$GithubHeadersCopyWithImpl<$Res>
    implements _$$_GithubHeadersCopyWith<$Res> {
  __$$_GithubHeadersCopyWithImpl(
      _$_GithubHeaders _value, $Res Function(_$_GithubHeaders) _then)
      : super(_value, (v) => _then(v as _$_GithubHeaders));

  @override
  _$_GithubHeaders get _value => super._value as _$_GithubHeaders;

  @override
  $Res call({
    Object? etag = freezed,
  }) {
    return _then(_$_GithubHeaders(
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GithubHeaders extends _GithubHeaders {
  const _$_GithubHeaders({this.etag}) : super._();

  @override
  final String? etag;

  @override
  String toString() {
    return 'GithubHeaders(etag: $etag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubHeaders &&
            const DeepCollectionEquality().equals(other.etag, etag));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(etag));

  @JsonKey(ignore: true)
  @override
  _$$_GithubHeadersCopyWith<_$_GithubHeaders> get copyWith =>
      __$$_GithubHeadersCopyWithImpl<_$_GithubHeaders>(this, _$identity);
}

abstract class _GithubHeaders extends GithubHeaders {
  const factory _GithubHeaders({final String? etag}) = _$_GithubHeaders;
  const _GithubHeaders._() : super._();

  @override
  String? get etag;
  @override
  @JsonKey(ignore: true)
  _$$_GithubHeadersCopyWith<_$_GithubHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}
