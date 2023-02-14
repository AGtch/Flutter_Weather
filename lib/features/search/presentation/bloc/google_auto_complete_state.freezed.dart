// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_auto_complete_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GoogleAutoCompleteState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(NetworkExceptions error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AutocompleteLoading<T> value) loading,
    required TResult Function(AutocompleteSuccess<T> value) success,
    required TResult Function(AutocompleteError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutocompleteLoading<T> value)? loading,
    TResult? Function(AutocompleteSuccess<T> value)? success,
    TResult? Function(AutocompleteError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AutocompleteLoading<T> value)? loading,
    TResult Function(AutocompleteSuccess<T> value)? success,
    TResult Function(AutocompleteError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleAutoCompleteStateCopyWith<T, $Res> {
  factory $GoogleAutoCompleteStateCopyWith(GoogleAutoCompleteState<T> value,
          $Res Function(GoogleAutoCompleteState<T>) then) =
      _$GoogleAutoCompleteStateCopyWithImpl<T, $Res,
          GoogleAutoCompleteState<T>>;
}

/// @nodoc
class _$GoogleAutoCompleteStateCopyWithImpl<T, $Res,
        $Val extends GoogleAutoCompleteState<T>>
    implements $GoogleAutoCompleteStateCopyWith<T, $Res> {
  _$GoogleAutoCompleteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AutocompleteLoadingCopyWith<T, $Res> {
  factory _$$AutocompleteLoadingCopyWith(_$AutocompleteLoading<T> value,
          $Res Function(_$AutocompleteLoading<T>) then) =
      __$$AutocompleteLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AutocompleteLoadingCopyWithImpl<T, $Res>
    extends _$GoogleAutoCompleteStateCopyWithImpl<T, $Res,
        _$AutocompleteLoading<T>>
    implements _$$AutocompleteLoadingCopyWith<T, $Res> {
  __$$AutocompleteLoadingCopyWithImpl(_$AutocompleteLoading<T> _value,
      $Res Function(_$AutocompleteLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AutocompleteLoading<T> implements AutocompleteLoading<T> {
  const _$AutocompleteLoading();

  @override
  String toString() {
    return 'GoogleAutoCompleteState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AutocompleteLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions error)? error,
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
    required TResult Function(AutocompleteLoading<T> value) loading,
    required TResult Function(AutocompleteSuccess<T> value) success,
    required TResult Function(AutocompleteError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutocompleteLoading<T> value)? loading,
    TResult? Function(AutocompleteSuccess<T> value)? success,
    TResult? Function(AutocompleteError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AutocompleteLoading<T> value)? loading,
    TResult Function(AutocompleteSuccess<T> value)? success,
    TResult Function(AutocompleteError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AutocompleteLoading<T> implements GoogleAutoCompleteState<T> {
  const factory AutocompleteLoading() = _$AutocompleteLoading<T>;
}

/// @nodoc
abstract class _$$AutocompleteSuccessCopyWith<T, $Res> {
  factory _$$AutocompleteSuccessCopyWith(_$AutocompleteSuccess<T> value,
          $Res Function(_$AutocompleteSuccess<T>) then) =
      __$$AutocompleteSuccessCopyWithImpl<T, $Res>;

  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AutocompleteSuccessCopyWithImpl<T, $Res>
    extends _$GoogleAutoCompleteStateCopyWithImpl<T, $Res,
        _$AutocompleteSuccess<T>>
    implements _$$AutocompleteSuccessCopyWith<T, $Res> {
  __$$AutocompleteSuccessCopyWithImpl(_$AutocompleteSuccess<T> _value,
      $Res Function(_$AutocompleteSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AutocompleteSuccess<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AutocompleteSuccess<T> implements AutocompleteSuccess<T> {
  const _$AutocompleteSuccess(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'GoogleAutoCompleteState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutocompleteSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutocompleteSuccessCopyWith<T, _$AutocompleteSuccess<T>> get copyWith =>
      __$$AutocompleteSuccessCopyWithImpl<T, _$AutocompleteSuccess<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AutocompleteLoading<T> value) loading,
    required TResult Function(AutocompleteSuccess<T> value) success,
    required TResult Function(AutocompleteError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutocompleteLoading<T> value)? loading,
    TResult? Function(AutocompleteSuccess<T> value)? success,
    TResult? Function(AutocompleteError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AutocompleteLoading<T> value)? loading,
    TResult Function(AutocompleteSuccess<T> value)? success,
    TResult Function(AutocompleteError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AutocompleteSuccess<T> implements GoogleAutoCompleteState<T> {
  const factory AutocompleteSuccess(final T data) = _$AutocompleteSuccess<T>;

  T get data;

  @JsonKey(ignore: true)
  _$$AutocompleteSuccessCopyWith<T, _$AutocompleteSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AutocompleteErrorCopyWith<T, $Res> {
  factory _$$AutocompleteErrorCopyWith(_$AutocompleteError<T> value,
          $Res Function(_$AutocompleteError<T>) then) =
      __$$AutocompleteErrorCopyWithImpl<T, $Res>;

  @useResult
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class __$$AutocompleteErrorCopyWithImpl<T, $Res>
    extends _$GoogleAutoCompleteStateCopyWithImpl<T, $Res,
        _$AutocompleteError<T>>
    implements _$$AutocompleteErrorCopyWith<T, $Res> {
  __$$AutocompleteErrorCopyWithImpl(_$AutocompleteError<T> _value,
      $Res Function(_$AutocompleteError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AutocompleteError<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res> get error {
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$AutocompleteError<T> implements AutocompleteError<T> {
  const _$AutocompleteError({required this.error});

  @override
  final NetworkExceptions error;

  @override
  String toString() {
    return 'GoogleAutoCompleteState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutocompleteError<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutocompleteErrorCopyWith<T, _$AutocompleteError<T>> get copyWith =>
      __$$AutocompleteErrorCopyWithImpl<T, _$AutocompleteError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AutocompleteLoading<T> value) loading,
    required TResult Function(AutocompleteSuccess<T> value) success,
    required TResult Function(AutocompleteError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AutocompleteLoading<T> value)? loading,
    TResult? Function(AutocompleteSuccess<T> value)? success,
    TResult? Function(AutocompleteError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AutocompleteLoading<T> value)? loading,
    TResult Function(AutocompleteSuccess<T> value)? success,
    TResult Function(AutocompleteError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AutocompleteError<T> implements GoogleAutoCompleteState<T> {
  const factory AutocompleteError({required final NetworkExceptions error}) =
      _$AutocompleteError<T>;

  NetworkExceptions get error;

  @JsonKey(ignore: true)
  _$$AutocompleteErrorCopyWith<T, _$AutocompleteError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
