// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paginated_repos_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaginatedReposState {
  Fresh<List<GithubRepo>> get repos => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<GithubRepo>> repos) initial,
    required TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)
        loadingInProgress,
    required TResult Function(
            Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<GithubRepo>> repos, GithubFailure failure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Fresh<List<GithubRepo>> repos)? initial,
    TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)?
        loadingInProgress,
    TResult Function(Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<GithubRepo>> repos, GithubFailure failure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<GithubRepo>> repos)? initial,
    TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)?
        loadingInProgress,
    TResult Function(Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<GithubRepo>> repos, GithubFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadingInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedReposStateCopyWith<PaginatedReposState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedReposStateCopyWith<$Res> {
  factory $PaginatedReposStateCopyWith(
          PaginatedReposState value, $Res Function(PaginatedReposState) then) =
      _$PaginatedReposStateCopyWithImpl<$Res>;
  $Res call({Fresh<List<GithubRepo>> repos});

  $FreshCopyWith<List<GithubRepo>, $Res> get repos;
}

/// @nodoc
class _$PaginatedReposStateCopyWithImpl<$Res>
    implements $PaginatedReposStateCopyWith<$Res> {
  _$PaginatedReposStateCopyWithImpl(this._value, this._then);

  final PaginatedReposState _value;
  // ignore: unused_field
  final $Res Function(PaginatedReposState) _then;

  @override
  $Res call({
    Object? repos = freezed,
  }) {
    return _then(_value.copyWith(
      repos: repos == freezed
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as Fresh<List<GithubRepo>>,
    ));
  }

  @override
  $FreshCopyWith<List<GithubRepo>, $Res> get repos {
    return $FreshCopyWith<List<GithubRepo>, $Res>(_value.repos, (value) {
      return _then(_value.copyWith(repos: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $PaginatedReposStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<GithubRepo>> repos});

  @override
  $FreshCopyWith<List<GithubRepo>, $Res> get repos;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PaginatedReposStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? repos = freezed,
  }) {
    return _then(_$_Initial(
      repos == freezed
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as Fresh<List<GithubRepo>>,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(this.repos) : super._();

  @override
  final Fresh<List<GithubRepo>> repos;

  @override
  String toString() {
    return 'PaginatedReposState.initial(repos: $repos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.repos, repos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(repos));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<GithubRepo>> repos) initial,
    required TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)
        loadingInProgress,
    required TResult Function(
            Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<GithubRepo>> repos, GithubFailure failure)
        loadFailure,
  }) {
    return initial(repos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Fresh<List<GithubRepo>> repos)? initial,
    TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)?
        loadingInProgress,
    TResult Function(Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<GithubRepo>> repos, GithubFailure failure)?
        loadFailure,
  }) {
    return initial?.call(repos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<GithubRepo>> repos)? initial,
    TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)?
        loadingInProgress,
    TResult Function(Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<GithubRepo>> repos, GithubFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(repos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadingInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends PaginatedReposState {
  const factory _Initial(final Fresh<List<GithubRepo>> repos) = _$_Initial;
  const _Initial._() : super._();

  @override
  Fresh<List<GithubRepo>> get repos;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res>
    implements $PaginatedReposStateCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<GithubRepo>> repos, int itemsPerPage});

  @override
  $FreshCopyWith<List<GithubRepo>, $Res> get repos;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$PaginatedReposStateCopyWithImpl<$Res>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _$_LoadInProgress));

  @override
  _$_LoadInProgress get _value => super._value as _$_LoadInProgress;

  @override
  $Res call({
    Object? repos = freezed,
    Object? itemsPerPage = freezed,
  }) {
    return _then(_$_LoadInProgress(
      repos == freezed
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as Fresh<List<GithubRepo>>,
      itemsPerPage == freezed
          ? _value.itemsPerPage
          : itemsPerPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress(this.repos, this.itemsPerPage) : super._();

  @override
  final Fresh<List<GithubRepo>> repos;
  @override
  final int itemsPerPage;

  @override
  String toString() {
    return 'PaginatedReposState.loadingInProgress(repos: $repos, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInProgress &&
            const DeepCollectionEquality().equals(other.repos, repos) &&
            const DeepCollectionEquality()
                .equals(other.itemsPerPage, itemsPerPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(repos),
      const DeepCollectionEquality().hash(itemsPerPage));

  @JsonKey(ignore: true)
  @override
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      __$$_LoadInProgressCopyWithImpl<_$_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<GithubRepo>> repos) initial,
    required TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)
        loadingInProgress,
    required TResult Function(
            Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<GithubRepo>> repos, GithubFailure failure)
        loadFailure,
  }) {
    return loadingInProgress(repos, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Fresh<List<GithubRepo>> repos)? initial,
    TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)?
        loadingInProgress,
    TResult Function(Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<GithubRepo>> repos, GithubFailure failure)?
        loadFailure,
  }) {
    return loadingInProgress?.call(repos, itemsPerPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<GithubRepo>> repos)? initial,
    TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)?
        loadingInProgress,
    TResult Function(Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<GithubRepo>> repos, GithubFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(repos, itemsPerPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadingInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress extends PaginatedReposState {
  const factory _LoadInProgress(
          final Fresh<List<GithubRepo>> repos, final int itemsPerPage) =
      _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  Fresh<List<GithubRepo>> get repos;
  int get itemsPerPage;
  @override
  @JsonKey(ignore: true)
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res>
    implements $PaginatedReposStateCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<GithubRepo>> repos, bool isNextPageAvailable});

  @override
  $FreshCopyWith<List<GithubRepo>, $Res> get repos;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$PaginatedReposStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;

  @override
  $Res call({
    Object? repos = freezed,
    Object? isNextPageAvailable = freezed,
  }) {
    return _then(_$_LoadSuccess(
      repos == freezed
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as Fresh<List<GithubRepo>>,
      isNextPageAvailable: isNextPageAvailable == freezed
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess extends _LoadSuccess {
  const _$_LoadSuccess(this.repos, {required this.isNextPageAvailable})
      : super._();

  @override
  final Fresh<List<GithubRepo>> repos;
  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'PaginatedReposState.loadSuccess(repos: $repos, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality().equals(other.repos, repos) &&
            const DeepCollectionEquality()
                .equals(other.isNextPageAvailable, isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(repos),
      const DeepCollectionEquality().hash(isNextPageAvailable));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<GithubRepo>> repos) initial,
    required TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)
        loadingInProgress,
    required TResult Function(
            Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<GithubRepo>> repos, GithubFailure failure)
        loadFailure,
  }) {
    return loadSuccess(repos, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Fresh<List<GithubRepo>> repos)? initial,
    TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)?
        loadingInProgress,
    TResult Function(Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<GithubRepo>> repos, GithubFailure failure)?
        loadFailure,
  }) {
    return loadSuccess?.call(repos, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<GithubRepo>> repos)? initial,
    TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)?
        loadingInProgress,
    TResult Function(Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<GithubRepo>> repos, GithubFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(repos, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadingInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess extends PaginatedReposState {
  const factory _LoadSuccess(final Fresh<List<GithubRepo>> repos,
      {required final bool isNextPageAvailable}) = _$_LoadSuccess;
  const _LoadSuccess._() : super._();

  @override
  Fresh<List<GithubRepo>> get repos;
  bool get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFailureCopyWith<$Res>
    implements $PaginatedReposStateCopyWith<$Res> {
  factory _$$_LoadFailureCopyWith(
          _$_LoadFailure value, $Res Function(_$_LoadFailure) then) =
      __$$_LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({Fresh<List<GithubRepo>> repos, GithubFailure failure});

  @override
  $FreshCopyWith<List<GithubRepo>, $Res> get repos;
  $GithubFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadFailureCopyWithImpl<$Res>
    extends _$PaginatedReposStateCopyWithImpl<$Res>
    implements _$$_LoadFailureCopyWith<$Res> {
  __$$_LoadFailureCopyWithImpl(
      _$_LoadFailure _value, $Res Function(_$_LoadFailure) _then)
      : super(_value, (v) => _then(v as _$_LoadFailure));

  @override
  _$_LoadFailure get _value => super._value as _$_LoadFailure;

  @override
  $Res call({
    Object? repos = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_LoadFailure(
      repos == freezed
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as Fresh<List<GithubRepo>>,
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GithubFailure,
    ));
  }

  @override
  $GithubFailureCopyWith<$Res> get failure {
    return $GithubFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure extends _LoadFailure {
  const _$_LoadFailure(this.repos, this.failure) : super._();

  @override
  final Fresh<List<GithubRepo>> repos;
  @override
  final GithubFailure failure;

  @override
  String toString() {
    return 'PaginatedReposState.loadFailure(repos: $repos, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadFailure &&
            const DeepCollectionEquality().equals(other.repos, repos) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(repos),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      __$$_LoadFailureCopyWithImpl<_$_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Fresh<List<GithubRepo>> repos) initial,
    required TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)
        loadingInProgress,
    required TResult Function(
            Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)
        loadSuccess,
    required TResult Function(
            Fresh<List<GithubRepo>> repos, GithubFailure failure)
        loadFailure,
  }) {
    return loadFailure(repos, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Fresh<List<GithubRepo>> repos)? initial,
    TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)?
        loadingInProgress,
    TResult Function(Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<GithubRepo>> repos, GithubFailure failure)?
        loadFailure,
  }) {
    return loadFailure?.call(repos, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Fresh<List<GithubRepo>> repos)? initial,
    TResult Function(Fresh<List<GithubRepo>> repos, int itemsPerPage)?
        loadingInProgress,
    TResult Function(Fresh<List<GithubRepo>> repos, bool isNextPageAvailable)?
        loadSuccess,
    TResult Function(Fresh<List<GithubRepo>> repos, GithubFailure failure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(repos, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadingInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadingInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends PaginatedReposState {
  const factory _LoadFailure(
          final Fresh<List<GithubRepo>> repos, final GithubFailure failure) =
      _$_LoadFailure;
  const _LoadFailure._() : super._();

  @override
  Fresh<List<GithubRepo>> get repos;
  GithubFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_LoadFailureCopyWith<_$_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
