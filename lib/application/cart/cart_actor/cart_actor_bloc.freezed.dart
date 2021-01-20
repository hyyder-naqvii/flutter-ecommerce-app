// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CartActorEventTearOff {
  const _$CartActorEventTearOff();

// ignore: unused_element
  _DeleteCart deleteCart(Cart cart) {
    return _DeleteCart(
      cart,
    );
  }

// ignore: unused_element
  _AddCart addCart(Cart cart) {
    return _AddCart(
      cart,
    );
  }

// ignore: unused_element
  _IncreaseQuantity increaseQuantity(Cart cart) {
    return _IncreaseQuantity(
      cart,
    );
  }

// ignore: unused_element
  _DecreaseQuantity decreaseQuantity(Cart cart) {
    return _DecreaseQuantity(
      cart,
    );
  }

// ignore: unused_element
  _DeleteAll deleteAll(String userID) {
    return _DeleteAll(
      userID,
    );
  }

// ignore: unused_element
  _CalculateTotal calculateTotal(String userID) {
    return _CalculateTotal(
      userID,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CartActorEvent = _$CartActorEventTearOff();

/// @nodoc
mixin _$CartActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleteCart(Cart cart),
    @required TResult addCart(Cart cart),
    @required TResult increaseQuantity(Cart cart),
    @required TResult decreaseQuantity(Cart cart),
    @required TResult deleteAll(String userID),
    @required TResult calculateTotal(String userID),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleteCart(Cart cart),
    TResult addCart(Cart cart),
    TResult increaseQuantity(Cart cart),
    TResult decreaseQuantity(Cart cart),
    TResult deleteAll(String userID),
    TResult calculateTotal(String userID),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleteCart(_DeleteCart value),
    @required TResult addCart(_AddCart value),
    @required TResult increaseQuantity(_IncreaseQuantity value),
    @required TResult decreaseQuantity(_DecreaseQuantity value),
    @required TResult deleteAll(_DeleteAll value),
    @required TResult calculateTotal(_CalculateTotal value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleteCart(_DeleteCart value),
    TResult addCart(_AddCart value),
    TResult increaseQuantity(_IncreaseQuantity value),
    TResult decreaseQuantity(_DecreaseQuantity value),
    TResult deleteAll(_DeleteAll value),
    TResult calculateTotal(_CalculateTotal value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CartActorEventCopyWith<$Res> {
  factory $CartActorEventCopyWith(
          CartActorEvent value, $Res Function(CartActorEvent) then) =
      _$CartActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartActorEventCopyWithImpl<$Res>
    implements $CartActorEventCopyWith<$Res> {
  _$CartActorEventCopyWithImpl(this._value, this._then);

  final CartActorEvent _value;
  // ignore: unused_field
  final $Res Function(CartActorEvent) _then;
}

/// @nodoc
abstract class _$DeleteCartCopyWith<$Res> {
  factory _$DeleteCartCopyWith(
          _DeleteCart value, $Res Function(_DeleteCart) then) =
      __$DeleteCartCopyWithImpl<$Res>;
  $Res call({Cart cart});
}

/// @nodoc
class __$DeleteCartCopyWithImpl<$Res> extends _$CartActorEventCopyWithImpl<$Res>
    implements _$DeleteCartCopyWith<$Res> {
  __$DeleteCartCopyWithImpl(
      _DeleteCart _value, $Res Function(_DeleteCart) _then)
      : super(_value, (v) => _then(v as _DeleteCart));

  @override
  _DeleteCart get _value => super._value as _DeleteCart;

  @override
  $Res call({
    Object cart = freezed,
  }) {
    return _then(_DeleteCart(
      cart == freezed ? _value.cart : cart as Cart,
    ));
  }
}

/// @nodoc
class _$_DeleteCart implements _DeleteCart {
  const _$_DeleteCart(this.cart) : assert(cart != null);

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartActorEvent.deleteCart(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteCart &&
            (identical(other.cart, cart) ||
                const DeepCollectionEquality().equals(other.cart, cart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cart);

  @override
  _$DeleteCartCopyWith<_DeleteCart> get copyWith =>
      __$DeleteCartCopyWithImpl<_DeleteCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleteCart(Cart cart),
    @required TResult addCart(Cart cart),
    @required TResult increaseQuantity(Cart cart),
    @required TResult decreaseQuantity(Cart cart),
    @required TResult deleteAll(String userID),
    @required TResult calculateTotal(String userID),
  }) {
    assert(deleteCart != null);
    assert(addCart != null);
    assert(increaseQuantity != null);
    assert(decreaseQuantity != null);
    assert(deleteAll != null);
    assert(calculateTotal != null);
    return deleteCart(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleteCart(Cart cart),
    TResult addCart(Cart cart),
    TResult increaseQuantity(Cart cart),
    TResult decreaseQuantity(Cart cart),
    TResult deleteAll(String userID),
    TResult calculateTotal(String userID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteCart != null) {
      return deleteCart(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleteCart(_DeleteCart value),
    @required TResult addCart(_AddCart value),
    @required TResult increaseQuantity(_IncreaseQuantity value),
    @required TResult decreaseQuantity(_DecreaseQuantity value),
    @required TResult deleteAll(_DeleteAll value),
    @required TResult calculateTotal(_CalculateTotal value),
  }) {
    assert(deleteCart != null);
    assert(addCart != null);
    assert(increaseQuantity != null);
    assert(decreaseQuantity != null);
    assert(deleteAll != null);
    assert(calculateTotal != null);
    return deleteCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleteCart(_DeleteCart value),
    TResult addCart(_AddCart value),
    TResult increaseQuantity(_IncreaseQuantity value),
    TResult decreaseQuantity(_DecreaseQuantity value),
    TResult deleteAll(_DeleteAll value),
    TResult calculateTotal(_CalculateTotal value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteCart != null) {
      return deleteCart(this);
    }
    return orElse();
  }
}

abstract class _DeleteCart implements CartActorEvent {
  const factory _DeleteCart(Cart cart) = _$_DeleteCart;

  Cart get cart;
  _$DeleteCartCopyWith<_DeleteCart> get copyWith;
}

/// @nodoc
abstract class _$AddCartCopyWith<$Res> {
  factory _$AddCartCopyWith(_AddCart value, $Res Function(_AddCart) then) =
      __$AddCartCopyWithImpl<$Res>;
  $Res call({Cart cart});
}

/// @nodoc
class __$AddCartCopyWithImpl<$Res> extends _$CartActorEventCopyWithImpl<$Res>
    implements _$AddCartCopyWith<$Res> {
  __$AddCartCopyWithImpl(_AddCart _value, $Res Function(_AddCart) _then)
      : super(_value, (v) => _then(v as _AddCart));

  @override
  _AddCart get _value => super._value as _AddCart;

  @override
  $Res call({
    Object cart = freezed,
  }) {
    return _then(_AddCart(
      cart == freezed ? _value.cart : cart as Cart,
    ));
  }
}

/// @nodoc
class _$_AddCart implements _AddCart {
  const _$_AddCart(this.cart) : assert(cart != null);

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartActorEvent.addCart(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddCart &&
            (identical(other.cart, cart) ||
                const DeepCollectionEquality().equals(other.cart, cart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cart);

  @override
  _$AddCartCopyWith<_AddCart> get copyWith =>
      __$AddCartCopyWithImpl<_AddCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleteCart(Cart cart),
    @required TResult addCart(Cart cart),
    @required TResult increaseQuantity(Cart cart),
    @required TResult decreaseQuantity(Cart cart),
    @required TResult deleteAll(String userID),
    @required TResult calculateTotal(String userID),
  }) {
    assert(deleteCart != null);
    assert(addCart != null);
    assert(increaseQuantity != null);
    assert(decreaseQuantity != null);
    assert(deleteAll != null);
    assert(calculateTotal != null);
    return addCart(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleteCart(Cart cart),
    TResult addCart(Cart cart),
    TResult increaseQuantity(Cart cart),
    TResult decreaseQuantity(Cart cart),
    TResult deleteAll(String userID),
    TResult calculateTotal(String userID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addCart != null) {
      return addCart(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleteCart(_DeleteCart value),
    @required TResult addCart(_AddCart value),
    @required TResult increaseQuantity(_IncreaseQuantity value),
    @required TResult decreaseQuantity(_DecreaseQuantity value),
    @required TResult deleteAll(_DeleteAll value),
    @required TResult calculateTotal(_CalculateTotal value),
  }) {
    assert(deleteCart != null);
    assert(addCart != null);
    assert(increaseQuantity != null);
    assert(decreaseQuantity != null);
    assert(deleteAll != null);
    assert(calculateTotal != null);
    return addCart(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleteCart(_DeleteCart value),
    TResult addCart(_AddCart value),
    TResult increaseQuantity(_IncreaseQuantity value),
    TResult decreaseQuantity(_DecreaseQuantity value),
    TResult deleteAll(_DeleteAll value),
    TResult calculateTotal(_CalculateTotal value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addCart != null) {
      return addCart(this);
    }
    return orElse();
  }
}

abstract class _AddCart implements CartActorEvent {
  const factory _AddCart(Cart cart) = _$_AddCart;

  Cart get cart;
  _$AddCartCopyWith<_AddCart> get copyWith;
}

/// @nodoc
abstract class _$IncreaseQuantityCopyWith<$Res> {
  factory _$IncreaseQuantityCopyWith(
          _IncreaseQuantity value, $Res Function(_IncreaseQuantity) then) =
      __$IncreaseQuantityCopyWithImpl<$Res>;
  $Res call({Cart cart});
}

/// @nodoc
class __$IncreaseQuantityCopyWithImpl<$Res>
    extends _$CartActorEventCopyWithImpl<$Res>
    implements _$IncreaseQuantityCopyWith<$Res> {
  __$IncreaseQuantityCopyWithImpl(
      _IncreaseQuantity _value, $Res Function(_IncreaseQuantity) _then)
      : super(_value, (v) => _then(v as _IncreaseQuantity));

  @override
  _IncreaseQuantity get _value => super._value as _IncreaseQuantity;

  @override
  $Res call({
    Object cart = freezed,
  }) {
    return _then(_IncreaseQuantity(
      cart == freezed ? _value.cart : cart as Cart,
    ));
  }
}

/// @nodoc
class _$_IncreaseQuantity implements _IncreaseQuantity {
  const _$_IncreaseQuantity(this.cart) : assert(cart != null);

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartActorEvent.increaseQuantity(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IncreaseQuantity &&
            (identical(other.cart, cart) ||
                const DeepCollectionEquality().equals(other.cart, cart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cart);

  @override
  _$IncreaseQuantityCopyWith<_IncreaseQuantity> get copyWith =>
      __$IncreaseQuantityCopyWithImpl<_IncreaseQuantity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleteCart(Cart cart),
    @required TResult addCart(Cart cart),
    @required TResult increaseQuantity(Cart cart),
    @required TResult decreaseQuantity(Cart cart),
    @required TResult deleteAll(String userID),
    @required TResult calculateTotal(String userID),
  }) {
    assert(deleteCart != null);
    assert(addCart != null);
    assert(increaseQuantity != null);
    assert(decreaseQuantity != null);
    assert(deleteAll != null);
    assert(calculateTotal != null);
    return increaseQuantity(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleteCart(Cart cart),
    TResult addCart(Cart cart),
    TResult increaseQuantity(Cart cart),
    TResult decreaseQuantity(Cart cart),
    TResult deleteAll(String userID),
    TResult calculateTotal(String userID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (increaseQuantity != null) {
      return increaseQuantity(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleteCart(_DeleteCart value),
    @required TResult addCart(_AddCart value),
    @required TResult increaseQuantity(_IncreaseQuantity value),
    @required TResult decreaseQuantity(_DecreaseQuantity value),
    @required TResult deleteAll(_DeleteAll value),
    @required TResult calculateTotal(_CalculateTotal value),
  }) {
    assert(deleteCart != null);
    assert(addCart != null);
    assert(increaseQuantity != null);
    assert(decreaseQuantity != null);
    assert(deleteAll != null);
    assert(calculateTotal != null);
    return increaseQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleteCart(_DeleteCart value),
    TResult addCart(_AddCart value),
    TResult increaseQuantity(_IncreaseQuantity value),
    TResult decreaseQuantity(_DecreaseQuantity value),
    TResult deleteAll(_DeleteAll value),
    TResult calculateTotal(_CalculateTotal value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (increaseQuantity != null) {
      return increaseQuantity(this);
    }
    return orElse();
  }
}

abstract class _IncreaseQuantity implements CartActorEvent {
  const factory _IncreaseQuantity(Cart cart) = _$_IncreaseQuantity;

  Cart get cart;
  _$IncreaseQuantityCopyWith<_IncreaseQuantity> get copyWith;
}

/// @nodoc
abstract class _$DecreaseQuantityCopyWith<$Res> {
  factory _$DecreaseQuantityCopyWith(
          _DecreaseQuantity value, $Res Function(_DecreaseQuantity) then) =
      __$DecreaseQuantityCopyWithImpl<$Res>;
  $Res call({Cart cart});
}

/// @nodoc
class __$DecreaseQuantityCopyWithImpl<$Res>
    extends _$CartActorEventCopyWithImpl<$Res>
    implements _$DecreaseQuantityCopyWith<$Res> {
  __$DecreaseQuantityCopyWithImpl(
      _DecreaseQuantity _value, $Res Function(_DecreaseQuantity) _then)
      : super(_value, (v) => _then(v as _DecreaseQuantity));

  @override
  _DecreaseQuantity get _value => super._value as _DecreaseQuantity;

  @override
  $Res call({
    Object cart = freezed,
  }) {
    return _then(_DecreaseQuantity(
      cart == freezed ? _value.cart : cart as Cart,
    ));
  }
}

/// @nodoc
class _$_DecreaseQuantity implements _DecreaseQuantity {
  const _$_DecreaseQuantity(this.cart) : assert(cart != null);

  @override
  final Cart cart;

  @override
  String toString() {
    return 'CartActorEvent.decreaseQuantity(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DecreaseQuantity &&
            (identical(other.cart, cart) ||
                const DeepCollectionEquality().equals(other.cart, cart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cart);

  @override
  _$DecreaseQuantityCopyWith<_DecreaseQuantity> get copyWith =>
      __$DecreaseQuantityCopyWithImpl<_DecreaseQuantity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleteCart(Cart cart),
    @required TResult addCart(Cart cart),
    @required TResult increaseQuantity(Cart cart),
    @required TResult decreaseQuantity(Cart cart),
    @required TResult deleteAll(String userID),
    @required TResult calculateTotal(String userID),
  }) {
    assert(deleteCart != null);
    assert(addCart != null);
    assert(increaseQuantity != null);
    assert(decreaseQuantity != null);
    assert(deleteAll != null);
    assert(calculateTotal != null);
    return decreaseQuantity(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleteCart(Cart cart),
    TResult addCart(Cart cart),
    TResult increaseQuantity(Cart cart),
    TResult decreaseQuantity(Cart cart),
    TResult deleteAll(String userID),
    TResult calculateTotal(String userID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (decreaseQuantity != null) {
      return decreaseQuantity(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleteCart(_DeleteCart value),
    @required TResult addCart(_AddCart value),
    @required TResult increaseQuantity(_IncreaseQuantity value),
    @required TResult decreaseQuantity(_DecreaseQuantity value),
    @required TResult deleteAll(_DeleteAll value),
    @required TResult calculateTotal(_CalculateTotal value),
  }) {
    assert(deleteCart != null);
    assert(addCart != null);
    assert(increaseQuantity != null);
    assert(decreaseQuantity != null);
    assert(deleteAll != null);
    assert(calculateTotal != null);
    return decreaseQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleteCart(_DeleteCart value),
    TResult addCart(_AddCart value),
    TResult increaseQuantity(_IncreaseQuantity value),
    TResult decreaseQuantity(_DecreaseQuantity value),
    TResult deleteAll(_DeleteAll value),
    TResult calculateTotal(_CalculateTotal value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (decreaseQuantity != null) {
      return decreaseQuantity(this);
    }
    return orElse();
  }
}

abstract class _DecreaseQuantity implements CartActorEvent {
  const factory _DecreaseQuantity(Cart cart) = _$_DecreaseQuantity;

  Cart get cart;
  _$DecreaseQuantityCopyWith<_DecreaseQuantity> get copyWith;
}

/// @nodoc
abstract class _$DeleteAllCopyWith<$Res> {
  factory _$DeleteAllCopyWith(
          _DeleteAll value, $Res Function(_DeleteAll) then) =
      __$DeleteAllCopyWithImpl<$Res>;
  $Res call({String userID});
}

/// @nodoc
class __$DeleteAllCopyWithImpl<$Res> extends _$CartActorEventCopyWithImpl<$Res>
    implements _$DeleteAllCopyWith<$Res> {
  __$DeleteAllCopyWithImpl(_DeleteAll _value, $Res Function(_DeleteAll) _then)
      : super(_value, (v) => _then(v as _DeleteAll));

  @override
  _DeleteAll get _value => super._value as _DeleteAll;

  @override
  $Res call({
    Object userID = freezed,
  }) {
    return _then(_DeleteAll(
      userID == freezed ? _value.userID : userID as String,
    ));
  }
}

/// @nodoc
class _$_DeleteAll implements _DeleteAll {
  const _$_DeleteAll(this.userID) : assert(userID != null);

  @override
  final String userID;

  @override
  String toString() {
    return 'CartActorEvent.deleteAll(userID: $userID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteAll &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userID);

  @override
  _$DeleteAllCopyWith<_DeleteAll> get copyWith =>
      __$DeleteAllCopyWithImpl<_DeleteAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleteCart(Cart cart),
    @required TResult addCart(Cart cart),
    @required TResult increaseQuantity(Cart cart),
    @required TResult decreaseQuantity(Cart cart),
    @required TResult deleteAll(String userID),
    @required TResult calculateTotal(String userID),
  }) {
    assert(deleteCart != null);
    assert(addCart != null);
    assert(increaseQuantity != null);
    assert(decreaseQuantity != null);
    assert(deleteAll != null);
    assert(calculateTotal != null);
    return deleteAll(userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleteCart(Cart cart),
    TResult addCart(Cart cart),
    TResult increaseQuantity(Cart cart),
    TResult decreaseQuantity(Cart cart),
    TResult deleteAll(String userID),
    TResult calculateTotal(String userID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteAll != null) {
      return deleteAll(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleteCart(_DeleteCart value),
    @required TResult addCart(_AddCart value),
    @required TResult increaseQuantity(_IncreaseQuantity value),
    @required TResult decreaseQuantity(_DecreaseQuantity value),
    @required TResult deleteAll(_DeleteAll value),
    @required TResult calculateTotal(_CalculateTotal value),
  }) {
    assert(deleteCart != null);
    assert(addCart != null);
    assert(increaseQuantity != null);
    assert(decreaseQuantity != null);
    assert(deleteAll != null);
    assert(calculateTotal != null);
    return deleteAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleteCart(_DeleteCart value),
    TResult addCart(_AddCart value),
    TResult increaseQuantity(_IncreaseQuantity value),
    TResult decreaseQuantity(_DecreaseQuantity value),
    TResult deleteAll(_DeleteAll value),
    TResult calculateTotal(_CalculateTotal value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteAll != null) {
      return deleteAll(this);
    }
    return orElse();
  }
}

abstract class _DeleteAll implements CartActorEvent {
  const factory _DeleteAll(String userID) = _$_DeleteAll;

  String get userID;
  _$DeleteAllCopyWith<_DeleteAll> get copyWith;
}

/// @nodoc
abstract class _$CalculateTotalCopyWith<$Res> {
  factory _$CalculateTotalCopyWith(
          _CalculateTotal value, $Res Function(_CalculateTotal) then) =
      __$CalculateTotalCopyWithImpl<$Res>;
  $Res call({String userID});
}

/// @nodoc
class __$CalculateTotalCopyWithImpl<$Res>
    extends _$CartActorEventCopyWithImpl<$Res>
    implements _$CalculateTotalCopyWith<$Res> {
  __$CalculateTotalCopyWithImpl(
      _CalculateTotal _value, $Res Function(_CalculateTotal) _then)
      : super(_value, (v) => _then(v as _CalculateTotal));

  @override
  _CalculateTotal get _value => super._value as _CalculateTotal;

  @override
  $Res call({
    Object userID = freezed,
  }) {
    return _then(_CalculateTotal(
      userID == freezed ? _value.userID : userID as String,
    ));
  }
}

/// @nodoc
class _$_CalculateTotal implements _CalculateTotal {
  const _$_CalculateTotal(this.userID) : assert(userID != null);

  @override
  final String userID;

  @override
  String toString() {
    return 'CartActorEvent.calculateTotal(userID: $userID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalculateTotal &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userID);

  @override
  _$CalculateTotalCopyWith<_CalculateTotal> get copyWith =>
      __$CalculateTotalCopyWithImpl<_CalculateTotal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleteCart(Cart cart),
    @required TResult addCart(Cart cart),
    @required TResult increaseQuantity(Cart cart),
    @required TResult decreaseQuantity(Cart cart),
    @required TResult deleteAll(String userID),
    @required TResult calculateTotal(String userID),
  }) {
    assert(deleteCart != null);
    assert(addCart != null);
    assert(increaseQuantity != null);
    assert(decreaseQuantity != null);
    assert(deleteAll != null);
    assert(calculateTotal != null);
    return calculateTotal(userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleteCart(Cart cart),
    TResult addCart(Cart cart),
    TResult increaseQuantity(Cart cart),
    TResult decreaseQuantity(Cart cart),
    TResult deleteAll(String userID),
    TResult calculateTotal(String userID),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (calculateTotal != null) {
      return calculateTotal(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleteCart(_DeleteCart value),
    @required TResult addCart(_AddCart value),
    @required TResult increaseQuantity(_IncreaseQuantity value),
    @required TResult decreaseQuantity(_DecreaseQuantity value),
    @required TResult deleteAll(_DeleteAll value),
    @required TResult calculateTotal(_CalculateTotal value),
  }) {
    assert(deleteCart != null);
    assert(addCart != null);
    assert(increaseQuantity != null);
    assert(decreaseQuantity != null);
    assert(deleteAll != null);
    assert(calculateTotal != null);
    return calculateTotal(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleteCart(_DeleteCart value),
    TResult addCart(_AddCart value),
    TResult increaseQuantity(_IncreaseQuantity value),
    TResult decreaseQuantity(_DecreaseQuantity value),
    TResult deleteAll(_DeleteAll value),
    TResult calculateTotal(_CalculateTotal value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (calculateTotal != null) {
      return calculateTotal(this);
    }
    return orElse();
  }
}

abstract class _CalculateTotal implements CartActorEvent {
  const factory _CalculateTotal(String userID) = _$_CalculateTotal;

  String get userID;
  _$CalculateTotalCopyWith<_CalculateTotal> get copyWith;
}

/// @nodoc
class _$CartActorStateTearOff {
  const _$CartActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionPerformed actionPerformed() {
    return const _ActionPerformed();
  }

// ignore: unused_element
  _TotalRequested totalRequested(CheckOutData checkOutData) {
    return _TotalRequested(
      checkOutData,
    );
  }

// ignore: unused_element
  _ActionSuccess actionSuccess() {
    return const _ActionSuccess();
  }

// ignore: unused_element
  _ActionFailure actionFailure() {
    return const _ActionFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $CartActorState = _$CartActorStateTearOff();

/// @nodoc
mixin _$CartActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionPerformed(),
    @required TResult totalRequested(CheckOutData checkOutData),
    @required TResult actionSuccess(),
    @required TResult actionFailure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionPerformed(),
    TResult totalRequested(CheckOutData checkOutData),
    TResult actionSuccess(),
    TResult actionFailure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionPerformed(_ActionPerformed value),
    @required TResult totalRequested(_TotalRequested value),
    @required TResult actionSuccess(_ActionSuccess value),
    @required TResult actionFailure(_ActionFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionPerformed(_ActionPerformed value),
    TResult totalRequested(_TotalRequested value),
    TResult actionSuccess(_ActionSuccess value),
    TResult actionFailure(_ActionFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CartActorStateCopyWith<$Res> {
  factory $CartActorStateCopyWith(
          CartActorState value, $Res Function(CartActorState) then) =
      _$CartActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartActorStateCopyWithImpl<$Res>
    implements $CartActorStateCopyWith<$Res> {
  _$CartActorStateCopyWithImpl(this._value, this._then);

  final CartActorState _value;
  // ignore: unused_field
  final $Res Function(CartActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CartActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CartActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionPerformed(),
    @required TResult totalRequested(CheckOutData checkOutData),
    @required TResult actionSuccess(),
    @required TResult actionFailure(),
  }) {
    assert(initial != null);
    assert(actionPerformed != null);
    assert(totalRequested != null);
    assert(actionSuccess != null);
    assert(actionFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionPerformed(),
    TResult totalRequested(CheckOutData checkOutData),
    TResult actionSuccess(),
    TResult actionFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionPerformed(_ActionPerformed value),
    @required TResult totalRequested(_TotalRequested value),
    @required TResult actionSuccess(_ActionSuccess value),
    @required TResult actionFailure(_ActionFailure value),
  }) {
    assert(initial != null);
    assert(actionPerformed != null);
    assert(totalRequested != null);
    assert(actionSuccess != null);
    assert(actionFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionPerformed(_ActionPerformed value),
    TResult totalRequested(_TotalRequested value),
    TResult actionSuccess(_ActionSuccess value),
    TResult actionFailure(_ActionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionPerformedCopyWith<$Res> {
  factory _$ActionPerformedCopyWith(
          _ActionPerformed value, $Res Function(_ActionPerformed) then) =
      __$ActionPerformedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionPerformedCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$ActionPerformedCopyWith<$Res> {
  __$ActionPerformedCopyWithImpl(
      _ActionPerformed _value, $Res Function(_ActionPerformed) _then)
      : super(_value, (v) => _then(v as _ActionPerformed));

  @override
  _ActionPerformed get _value => super._value as _ActionPerformed;
}

/// @nodoc
class _$_ActionPerformed implements _ActionPerformed {
  const _$_ActionPerformed();

  @override
  String toString() {
    return 'CartActorState.actionPerformed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionPerformed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionPerformed(),
    @required TResult totalRequested(CheckOutData checkOutData),
    @required TResult actionSuccess(),
    @required TResult actionFailure(),
  }) {
    assert(initial != null);
    assert(actionPerformed != null);
    assert(totalRequested != null);
    assert(actionSuccess != null);
    assert(actionFailure != null);
    return actionPerformed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionPerformed(),
    TResult totalRequested(CheckOutData checkOutData),
    TResult actionSuccess(),
    TResult actionFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionPerformed != null) {
      return actionPerformed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionPerformed(_ActionPerformed value),
    @required TResult totalRequested(_TotalRequested value),
    @required TResult actionSuccess(_ActionSuccess value),
    @required TResult actionFailure(_ActionFailure value),
  }) {
    assert(initial != null);
    assert(actionPerformed != null);
    assert(totalRequested != null);
    assert(actionSuccess != null);
    assert(actionFailure != null);
    return actionPerformed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionPerformed(_ActionPerformed value),
    TResult totalRequested(_TotalRequested value),
    TResult actionSuccess(_ActionSuccess value),
    TResult actionFailure(_ActionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionPerformed != null) {
      return actionPerformed(this);
    }
    return orElse();
  }
}

abstract class _ActionPerformed implements CartActorState {
  const factory _ActionPerformed() = _$_ActionPerformed;
}

/// @nodoc
abstract class _$TotalRequestedCopyWith<$Res> {
  factory _$TotalRequestedCopyWith(
          _TotalRequested value, $Res Function(_TotalRequested) then) =
      __$TotalRequestedCopyWithImpl<$Res>;
  $Res call({CheckOutData checkOutData});
}

/// @nodoc
class __$TotalRequestedCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$TotalRequestedCopyWith<$Res> {
  __$TotalRequestedCopyWithImpl(
      _TotalRequested _value, $Res Function(_TotalRequested) _then)
      : super(_value, (v) => _then(v as _TotalRequested));

  @override
  _TotalRequested get _value => super._value as _TotalRequested;

  @override
  $Res call({
    Object checkOutData = freezed,
  }) {
    return _then(_TotalRequested(
      checkOutData == freezed
          ? _value.checkOutData
          : checkOutData as CheckOutData,
    ));
  }
}

/// @nodoc
class _$_TotalRequested implements _TotalRequested {
  const _$_TotalRequested(this.checkOutData) : assert(checkOutData != null);

  @override
  final CheckOutData checkOutData;

  @override
  String toString() {
    return 'CartActorState.totalRequested(checkOutData: $checkOutData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TotalRequested &&
            (identical(other.checkOutData, checkOutData) ||
                const DeepCollectionEquality()
                    .equals(other.checkOutData, checkOutData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(checkOutData);

  @override
  _$TotalRequestedCopyWith<_TotalRequested> get copyWith =>
      __$TotalRequestedCopyWithImpl<_TotalRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionPerformed(),
    @required TResult totalRequested(CheckOutData checkOutData),
    @required TResult actionSuccess(),
    @required TResult actionFailure(),
  }) {
    assert(initial != null);
    assert(actionPerformed != null);
    assert(totalRequested != null);
    assert(actionSuccess != null);
    assert(actionFailure != null);
    return totalRequested(checkOutData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionPerformed(),
    TResult totalRequested(CheckOutData checkOutData),
    TResult actionSuccess(),
    TResult actionFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (totalRequested != null) {
      return totalRequested(checkOutData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionPerformed(_ActionPerformed value),
    @required TResult totalRequested(_TotalRequested value),
    @required TResult actionSuccess(_ActionSuccess value),
    @required TResult actionFailure(_ActionFailure value),
  }) {
    assert(initial != null);
    assert(actionPerformed != null);
    assert(totalRequested != null);
    assert(actionSuccess != null);
    assert(actionFailure != null);
    return totalRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionPerformed(_ActionPerformed value),
    TResult totalRequested(_TotalRequested value),
    TResult actionSuccess(_ActionSuccess value),
    TResult actionFailure(_ActionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (totalRequested != null) {
      return totalRequested(this);
    }
    return orElse();
  }
}

abstract class _TotalRequested implements CartActorState {
  const factory _TotalRequested(CheckOutData checkOutData) = _$_TotalRequested;

  CheckOutData get checkOutData;
  _$TotalRequestedCopyWith<_TotalRequested> get copyWith;
}

/// @nodoc
abstract class _$ActionSuccessCopyWith<$Res> {
  factory _$ActionSuccessCopyWith(
          _ActionSuccess value, $Res Function(_ActionSuccess) then) =
      __$ActionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionSuccessCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$ActionSuccessCopyWith<$Res> {
  __$ActionSuccessCopyWithImpl(
      _ActionSuccess _value, $Res Function(_ActionSuccess) _then)
      : super(_value, (v) => _then(v as _ActionSuccess));

  @override
  _ActionSuccess get _value => super._value as _ActionSuccess;
}

/// @nodoc
class _$_ActionSuccess implements _ActionSuccess {
  const _$_ActionSuccess();

  @override
  String toString() {
    return 'CartActorState.actionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionPerformed(),
    @required TResult totalRequested(CheckOutData checkOutData),
    @required TResult actionSuccess(),
    @required TResult actionFailure(),
  }) {
    assert(initial != null);
    assert(actionPerformed != null);
    assert(totalRequested != null);
    assert(actionSuccess != null);
    assert(actionFailure != null);
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionPerformed(),
    TResult totalRequested(CheckOutData checkOutData),
    TResult actionSuccess(),
    TResult actionFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionSuccess != null) {
      return actionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionPerformed(_ActionPerformed value),
    @required TResult totalRequested(_TotalRequested value),
    @required TResult actionSuccess(_ActionSuccess value),
    @required TResult actionFailure(_ActionFailure value),
  }) {
    assert(initial != null);
    assert(actionPerformed != null);
    assert(totalRequested != null);
    assert(actionSuccess != null);
    assert(actionFailure != null);
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionPerformed(_ActionPerformed value),
    TResult totalRequested(_TotalRequested value),
    TResult actionSuccess(_ActionSuccess value),
    TResult actionFailure(_ActionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _ActionSuccess implements CartActorState {
  const factory _ActionSuccess() = _$_ActionSuccess;
}

/// @nodoc
abstract class _$ActionFailureCopyWith<$Res> {
  factory _$ActionFailureCopyWith(
          _ActionFailure value, $Res Function(_ActionFailure) then) =
      __$ActionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionFailureCopyWithImpl<$Res>
    extends _$CartActorStateCopyWithImpl<$Res>
    implements _$ActionFailureCopyWith<$Res> {
  __$ActionFailureCopyWithImpl(
      _ActionFailure _value, $Res Function(_ActionFailure) _then)
      : super(_value, (v) => _then(v as _ActionFailure));

  @override
  _ActionFailure get _value => super._value as _ActionFailure;
}

/// @nodoc
class _$_ActionFailure implements _ActionFailure {
  const _$_ActionFailure();

  @override
  String toString() {
    return 'CartActorState.actionFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionPerformed(),
    @required TResult totalRequested(CheckOutData checkOutData),
    @required TResult actionSuccess(),
    @required TResult actionFailure(),
  }) {
    assert(initial != null);
    assert(actionPerformed != null);
    assert(totalRequested != null);
    assert(actionSuccess != null);
    assert(actionFailure != null);
    return actionFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionPerformed(),
    TResult totalRequested(CheckOutData checkOutData),
    TResult actionSuccess(),
    TResult actionFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionFailure != null) {
      return actionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionPerformed(_ActionPerformed value),
    @required TResult totalRequested(_TotalRequested value),
    @required TResult actionSuccess(_ActionSuccess value),
    @required TResult actionFailure(_ActionFailure value),
  }) {
    assert(initial != null);
    assert(actionPerformed != null);
    assert(totalRequested != null);
    assert(actionSuccess != null);
    assert(actionFailure != null);
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionPerformed(_ActionPerformed value),
    TResult totalRequested(_TotalRequested value),
    TResult actionSuccess(_ActionSuccess value),
    TResult actionFailure(_ActionFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _ActionFailure implements CartActorState {
  const factory _ActionFailure() = _$_ActionFailure;
}
