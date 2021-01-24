// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  RequestAuthState requestAuthState() {
    return const RequestAuthState();
  }

// ignore: unused_element
  SignOut signOut() {
    return const SignOut();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestAuthState(),
    @required TResult signOut(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestAuthState(),
    TResult signOut(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestAuthState(RequestAuthState value),
    @required TResult signOut(SignOut value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestAuthState(RequestAuthState value),
    TResult signOut(SignOut value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $RequestAuthStateCopyWith<$Res> {
  factory $RequestAuthStateCopyWith(
          RequestAuthState value, $Res Function(RequestAuthState) then) =
      _$RequestAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestAuthStateCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $RequestAuthStateCopyWith<$Res> {
  _$RequestAuthStateCopyWithImpl(
      RequestAuthState _value, $Res Function(RequestAuthState) _then)
      : super(_value, (v) => _then(v as RequestAuthState));

  @override
  RequestAuthState get _value => super._value as RequestAuthState;
}

/// @nodoc
class _$RequestAuthState implements RequestAuthState {
  const _$RequestAuthState();

  @override
  String toString() {
    return 'AuthEvent.requestAuthState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestAuthState(),
    @required TResult signOut(),
  }) {
    assert(requestAuthState != null);
    assert(signOut != null);
    return requestAuthState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestAuthState(),
    TResult signOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestAuthState != null) {
      return requestAuthState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestAuthState(RequestAuthState value),
    @required TResult signOut(SignOut value),
  }) {
    assert(requestAuthState != null);
    assert(signOut != null);
    return requestAuthState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestAuthState(RequestAuthState value),
    TResult signOut(SignOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestAuthState != null) {
      return requestAuthState(this);
    }
    return orElse();
  }
}

abstract class RequestAuthState implements AuthEvent {
  const factory RequestAuthState() = _$RequestAuthState;
}

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(SignOut _value, $Res Function(SignOut) _then)
      : super(_value, (v) => _then(v as SignOut));

  @override
  SignOut get _value => super._value as SignOut;
}

/// @nodoc
class _$SignOut implements SignOut {
  const _$SignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult requestAuthState(),
    @required TResult signOut(),
  }) {
    assert(requestAuthState != null);
    assert(signOut != null);
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult requestAuthState(),
    TResult signOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult requestAuthState(RequestAuthState value),
    @required TResult signOut(SignOut value),
  }) {
    assert(requestAuthState != null);
    assert(signOut != null);
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult requestAuthState(RequestAuthState value),
    TResult signOut(SignOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut() = _$SignOut;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _AuthState call({@required bool isAuthenticated, @required bool isAdmin}) {
    return _AuthState(
      isAuthenticated: isAuthenticated,
      isAdmin: isAdmin,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  bool get isAuthenticated;
  bool get isAdmin;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call({bool isAuthenticated, bool isAdmin});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object isAuthenticated = freezed,
    Object isAdmin = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated as bool,
      isAdmin: isAdmin == freezed ? _value.isAdmin : isAdmin as bool,
    ));
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isAuthenticated, bool isAdmin});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object isAuthenticated = freezed,
    Object isAdmin = freezed,
  }) {
    return _then(_AuthState(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated as bool,
      isAdmin: isAdmin == freezed ? _value.isAdmin : isAdmin as bool,
    ));
  }
}

/// @nodoc
class _$_AuthState implements _AuthState {
  const _$_AuthState({@required this.isAuthenticated, @required this.isAdmin})
      : assert(isAuthenticated != null),
        assert(isAdmin != null);

  @override
  final bool isAuthenticated;
  @override
  final bool isAdmin;

  @override
  String toString() {
    return 'AuthState(isAuthenticated: $isAuthenticated, isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticated, isAuthenticated)) &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality().equals(other.isAdmin, isAdmin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAuthenticated) ^
      const DeepCollectionEquality().hash(isAdmin);

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {@required bool isAuthenticated, @required bool isAdmin}) = _$_AuthState;

  @override
  bool get isAuthenticated;
  @override
  bool get isAdmin;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith;
}
