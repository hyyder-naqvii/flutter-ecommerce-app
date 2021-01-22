// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UsersEventTearOff {
  const _$UsersEventTearOff();

// ignore: unused_element
  GetCurrentUser getCurrentUser() {
    return const GetCurrentUser();
  }

// ignore: unused_element
  WatchCurrentUser watchCurrentUser() {
    return const WatchCurrentUser();
  }

// ignore: unused_element
  UpdateCurrentUserProfilePic updateCurrentUserProfilePic(
      {@required bool removeInstead}) {
    return UpdateCurrentUserProfilePic(
      removeInstead: removeInstead,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UsersEvent = _$UsersEventTearOff();

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getCurrentUser(),
    @required TResult watchCurrentUser(),
    @required TResult updateCurrentUserProfilePic(bool removeInstead),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getCurrentUser(),
    TResult watchCurrentUser(),
    TResult updateCurrentUserProfilePic(bool removeInstead),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult watchCurrentUser(WatchCurrentUser value),
    @required
        TResult updateCurrentUserProfilePic(UpdateCurrentUserProfilePic value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getCurrentUser(GetCurrentUser value),
    TResult watchCurrentUser(WatchCurrentUser value),
    TResult updateCurrentUserProfilePic(UpdateCurrentUserProfilePic value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res> implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  final UsersEvent _value;
  // ignore: unused_field
  final $Res Function(UsersEvent) _then;
}

/// @nodoc
abstract class $GetCurrentUserCopyWith<$Res> {
  factory $GetCurrentUserCopyWith(
          GetCurrentUser value, $Res Function(GetCurrentUser) then) =
      _$GetCurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentUserCopyWithImpl<$Res> extends _$UsersEventCopyWithImpl<$Res>
    implements $GetCurrentUserCopyWith<$Res> {
  _$GetCurrentUserCopyWithImpl(
      GetCurrentUser _value, $Res Function(GetCurrentUser) _then)
      : super(_value, (v) => _then(v as GetCurrentUser));

  @override
  GetCurrentUser get _value => super._value as GetCurrentUser;
}

/// @nodoc
class _$GetCurrentUser implements GetCurrentUser {
  const _$GetCurrentUser();

  @override
  String toString() {
    return 'UsersEvent.getCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCurrentUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getCurrentUser(),
    @required TResult watchCurrentUser(),
    @required TResult updateCurrentUserProfilePic(bool removeInstead),
  }) {
    assert(getCurrentUser != null);
    assert(watchCurrentUser != null);
    assert(updateCurrentUserProfilePic != null);
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getCurrentUser(),
    TResult watchCurrentUser(),
    TResult updateCurrentUserProfilePic(bool removeInstead),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult watchCurrentUser(WatchCurrentUser value),
    @required
        TResult updateCurrentUserProfilePic(UpdateCurrentUserProfilePic value),
  }) {
    assert(getCurrentUser != null);
    assert(watchCurrentUser != null);
    assert(updateCurrentUserProfilePic != null);
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getCurrentUser(GetCurrentUser value),
    TResult watchCurrentUser(WatchCurrentUser value),
    TResult updateCurrentUserProfilePic(UpdateCurrentUserProfilePic value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUser implements UsersEvent {
  const factory GetCurrentUser() = _$GetCurrentUser;
}

/// @nodoc
abstract class $WatchCurrentUserCopyWith<$Res> {
  factory $WatchCurrentUserCopyWith(
          WatchCurrentUser value, $Res Function(WatchCurrentUser) then) =
      _$WatchCurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchCurrentUserCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res>
    implements $WatchCurrentUserCopyWith<$Res> {
  _$WatchCurrentUserCopyWithImpl(
      WatchCurrentUser _value, $Res Function(WatchCurrentUser) _then)
      : super(_value, (v) => _then(v as WatchCurrentUser));

  @override
  WatchCurrentUser get _value => super._value as WatchCurrentUser;
}

/// @nodoc
class _$WatchCurrentUser implements WatchCurrentUser {
  const _$WatchCurrentUser();

  @override
  String toString() {
    return 'UsersEvent.watchCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchCurrentUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getCurrentUser(),
    @required TResult watchCurrentUser(),
    @required TResult updateCurrentUserProfilePic(bool removeInstead),
  }) {
    assert(getCurrentUser != null);
    assert(watchCurrentUser != null);
    assert(updateCurrentUserProfilePic != null);
    return watchCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getCurrentUser(),
    TResult watchCurrentUser(),
    TResult updateCurrentUserProfilePic(bool removeInstead),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchCurrentUser != null) {
      return watchCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult watchCurrentUser(WatchCurrentUser value),
    @required
        TResult updateCurrentUserProfilePic(UpdateCurrentUserProfilePic value),
  }) {
    assert(getCurrentUser != null);
    assert(watchCurrentUser != null);
    assert(updateCurrentUserProfilePic != null);
    return watchCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getCurrentUser(GetCurrentUser value),
    TResult watchCurrentUser(WatchCurrentUser value),
    TResult updateCurrentUserProfilePic(UpdateCurrentUserProfilePic value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchCurrentUser != null) {
      return watchCurrentUser(this);
    }
    return orElse();
  }
}

abstract class WatchCurrentUser implements UsersEvent {
  const factory WatchCurrentUser() = _$WatchCurrentUser;
}

/// @nodoc
abstract class $UpdateCurrentUserProfilePicCopyWith<$Res> {
  factory $UpdateCurrentUserProfilePicCopyWith(
          UpdateCurrentUserProfilePic value,
          $Res Function(UpdateCurrentUserProfilePic) then) =
      _$UpdateCurrentUserProfilePicCopyWithImpl<$Res>;
  $Res call({bool removeInstead});
}

/// @nodoc
class _$UpdateCurrentUserProfilePicCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res>
    implements $UpdateCurrentUserProfilePicCopyWith<$Res> {
  _$UpdateCurrentUserProfilePicCopyWithImpl(UpdateCurrentUserProfilePic _value,
      $Res Function(UpdateCurrentUserProfilePic) _then)
      : super(_value, (v) => _then(v as UpdateCurrentUserProfilePic));

  @override
  UpdateCurrentUserProfilePic get _value =>
      super._value as UpdateCurrentUserProfilePic;

  @override
  $Res call({
    Object removeInstead = freezed,
  }) {
    return _then(UpdateCurrentUserProfilePic(
      removeInstead: removeInstead == freezed
          ? _value.removeInstead
          : removeInstead as bool,
    ));
  }
}

/// @nodoc
class _$UpdateCurrentUserProfilePic implements UpdateCurrentUserProfilePic {
  const _$UpdateCurrentUserProfilePic({@required this.removeInstead})
      : assert(removeInstead != null);

  @override
  final bool removeInstead;

  @override
  String toString() {
    return 'UsersEvent.updateCurrentUserProfilePic(removeInstead: $removeInstead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateCurrentUserProfilePic &&
            (identical(other.removeInstead, removeInstead) ||
                const DeepCollectionEquality()
                    .equals(other.removeInstead, removeInstead)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(removeInstead);

  @override
  $UpdateCurrentUserProfilePicCopyWith<UpdateCurrentUserProfilePic>
      get copyWith => _$UpdateCurrentUserProfilePicCopyWithImpl<
          UpdateCurrentUserProfilePic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getCurrentUser(),
    @required TResult watchCurrentUser(),
    @required TResult updateCurrentUserProfilePic(bool removeInstead),
  }) {
    assert(getCurrentUser != null);
    assert(watchCurrentUser != null);
    assert(updateCurrentUserProfilePic != null);
    return updateCurrentUserProfilePic(removeInstead);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getCurrentUser(),
    TResult watchCurrentUser(),
    TResult updateCurrentUserProfilePic(bool removeInstead),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateCurrentUserProfilePic != null) {
      return updateCurrentUserProfilePic(removeInstead);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult watchCurrentUser(WatchCurrentUser value),
    @required
        TResult updateCurrentUserProfilePic(UpdateCurrentUserProfilePic value),
  }) {
    assert(getCurrentUser != null);
    assert(watchCurrentUser != null);
    assert(updateCurrentUserProfilePic != null);
    return updateCurrentUserProfilePic(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getCurrentUser(GetCurrentUser value),
    TResult watchCurrentUser(WatchCurrentUser value),
    TResult updateCurrentUserProfilePic(UpdateCurrentUserProfilePic value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateCurrentUserProfilePic != null) {
      return updateCurrentUserProfilePic(this);
    }
    return orElse();
  }
}

abstract class UpdateCurrentUserProfilePic implements UsersEvent {
  const factory UpdateCurrentUserProfilePic({@required bool removeInstead}) =
      _$UpdateCurrentUserProfilePic;

  bool get removeInstead;
  $UpdateCurrentUserProfilePicCopyWith<UpdateCurrentUserProfilePic>
      get copyWith;
}

/// @nodoc
class _$UsersStateTearOff {
  const _$UsersStateTearOff();

// ignore: unused_element
  _UsersState call({OOGLOOUser user}) {
    return _UsersState(
      user: user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UsersState = _$UsersStateTearOff();

/// @nodoc
mixin _$UsersState {
  OOGLOOUser get user;

  $UsersStateCopyWith<UsersState> get copyWith;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res>;
  $Res call({OOGLOOUser user});

  $OOGLOOUserCopyWith<$Res> get user;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res> implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  final UsersState _value;
  // ignore: unused_field
  final $Res Function(UsersState) _then;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as OOGLOOUser,
    ));
  }

  @override
  $OOGLOOUserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $OOGLOOUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$UsersStateCopyWith<$Res> implements $UsersStateCopyWith<$Res> {
  factory _$UsersStateCopyWith(
          _UsersState value, $Res Function(_UsersState) then) =
      __$UsersStateCopyWithImpl<$Res>;
  @override
  $Res call({OOGLOOUser user});

  @override
  $OOGLOOUserCopyWith<$Res> get user;
}

/// @nodoc
class __$UsersStateCopyWithImpl<$Res> extends _$UsersStateCopyWithImpl<$Res>
    implements _$UsersStateCopyWith<$Res> {
  __$UsersStateCopyWithImpl(
      _UsersState _value, $Res Function(_UsersState) _then)
      : super(_value, (v) => _then(v as _UsersState));

  @override
  _UsersState get _value => super._value as _UsersState;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_UsersState(
      user: user == freezed ? _value.user : user as OOGLOOUser,
    ));
  }
}

/// @nodoc
class _$_UsersState implements _UsersState {
  const _$_UsersState({this.user});

  @override
  final OOGLOOUser user;

  @override
  String toString() {
    return 'UsersState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsersState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$UsersStateCopyWith<_UsersState> get copyWith =>
      __$UsersStateCopyWithImpl<_UsersState>(this, _$identity);
}

abstract class _UsersState implements UsersState {
  const factory _UsersState({OOGLOOUser user}) = _$_UsersState;

  @override
  OOGLOOUser get user;
  @override
  _$UsersStateCopyWith<_UsersState> get copyWith;
}
