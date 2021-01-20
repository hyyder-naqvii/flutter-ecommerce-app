// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'obay_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class OUser extends DataClass implements Insertable<OUser> {
  final String userID;
  final String fullName;
  final String email;
  final String password;
  final String gender;
  final String phoneNo;
  final Uint8List profilePic;
  OUser(
      {@required this.userID,
      @required this.fullName,
      @required this.email,
      @required this.password,
      this.gender,
      this.phoneNo,
      this.profilePic});
  factory OUser.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final uint8ListType = db.typeSystem.forDartType<Uint8List>();
    return OUser(
      userID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_i_d']),
      fullName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}full_name']),
      email:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      password: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}password']),
      gender:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}gender']),
      phoneNo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}phone_no']),
      profilePic: uint8ListType
          .mapFromDatabaseResponse(data['${effectivePrefix}profile_pic']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userID != null) {
      map['user_i_d'] = Variable<String>(userID);
    }
    if (!nullToAbsent || fullName != null) {
      map['full_name'] = Variable<String>(fullName);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || password != null) {
      map['password'] = Variable<String>(password);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] = Variable<String>(gender);
    }
    if (!nullToAbsent || phoneNo != null) {
      map['phone_no'] = Variable<String>(phoneNo);
    }
    if (!nullToAbsent || profilePic != null) {
      map['profile_pic'] = Variable<Uint8List>(profilePic);
    }
    return map;
  }

  OUsersCompanion toCompanion(bool nullToAbsent) {
    return OUsersCompanion(
      userID:
          userID == null && nullToAbsent ? const Value.absent() : Value(userID),
      fullName: fullName == null && nullToAbsent
          ? const Value.absent()
          : Value(fullName),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      password: password == null && nullToAbsent
          ? const Value.absent()
          : Value(password),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      phoneNo: phoneNo == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNo),
      profilePic: profilePic == null && nullToAbsent
          ? const Value.absent()
          : Value(profilePic),
    );
  }

  factory OUser.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return OUser(
      userID: serializer.fromJson<String>(json['userID']),
      fullName: serializer.fromJson<String>(json['fullName']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
      gender: serializer.fromJson<String>(json['gender']),
      phoneNo: serializer.fromJson<String>(json['phoneNo']),
      profilePic: serializer.fromJson<Uint8List>(json['profilePic']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userID': serializer.toJson<String>(userID),
      'fullName': serializer.toJson<String>(fullName),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
      'gender': serializer.toJson<String>(gender),
      'phoneNo': serializer.toJson<String>(phoneNo),
      'profilePic': serializer.toJson<Uint8List>(profilePic),
    };
  }

  OUser copyWith(
          {String userID,
          String fullName,
          String email,
          String password,
          String gender,
          String phoneNo,
          Uint8List profilePic}) =>
      OUser(
        userID: userID ?? this.userID,
        fullName: fullName ?? this.fullName,
        email: email ?? this.email,
        password: password ?? this.password,
        gender: gender ?? this.gender,
        phoneNo: phoneNo ?? this.phoneNo,
        profilePic: profilePic ?? this.profilePic,
      );
  @override
  String toString() {
    return (StringBuffer('OUser(')
          ..write('userID: $userID, ')
          ..write('fullName: $fullName, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('gender: $gender, ')
          ..write('phoneNo: $phoneNo, ')
          ..write('profilePic: $profilePic')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      userID.hashCode,
      $mrjc(
          fullName.hashCode,
          $mrjc(
              email.hashCode,
              $mrjc(
                  password.hashCode,
                  $mrjc(gender.hashCode,
                      $mrjc(phoneNo.hashCode, profilePic.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is OUser &&
          other.userID == this.userID &&
          other.fullName == this.fullName &&
          other.email == this.email &&
          other.password == this.password &&
          other.gender == this.gender &&
          other.phoneNo == this.phoneNo &&
          other.profilePic == this.profilePic);
}

class OUsersCompanion extends UpdateCompanion<OUser> {
  final Value<String> userID;
  final Value<String> fullName;
  final Value<String> email;
  final Value<String> password;
  final Value<String> gender;
  final Value<String> phoneNo;
  final Value<Uint8List> profilePic;
  const OUsersCompanion({
    this.userID = const Value.absent(),
    this.fullName = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.gender = const Value.absent(),
    this.phoneNo = const Value.absent(),
    this.profilePic = const Value.absent(),
  });
  OUsersCompanion.insert({
    @required String userID,
    @required String fullName,
    @required String email,
    @required String password,
    this.gender = const Value.absent(),
    this.phoneNo = const Value.absent(),
    this.profilePic = const Value.absent(),
  })  : userID = Value(userID),
        fullName = Value(fullName),
        email = Value(email),
        password = Value(password);
  static Insertable<OUser> custom({
    Expression<String> userID,
    Expression<String> fullName,
    Expression<String> email,
    Expression<String> password,
    Expression<String> gender,
    Expression<String> phoneNo,
    Expression<Uint8List> profilePic,
  }) {
    return RawValuesInsertable({
      if (userID != null) 'user_i_d': userID,
      if (fullName != null) 'full_name': fullName,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (gender != null) 'gender': gender,
      if (phoneNo != null) 'phone_no': phoneNo,
      if (profilePic != null) 'profile_pic': profilePic,
    });
  }

  OUsersCompanion copyWith(
      {Value<String> userID,
      Value<String> fullName,
      Value<String> email,
      Value<String> password,
      Value<String> gender,
      Value<String> phoneNo,
      Value<Uint8List> profilePic}) {
    return OUsersCompanion(
      userID: userID ?? this.userID,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      password: password ?? this.password,
      gender: gender ?? this.gender,
      phoneNo: phoneNo ?? this.phoneNo,
      profilePic: profilePic ?? this.profilePic,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userID.present) {
      map['user_i_d'] = Variable<String>(userID.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (phoneNo.present) {
      map['phone_no'] = Variable<String>(phoneNo.value);
    }
    if (profilePic.present) {
      map['profile_pic'] = Variable<Uint8List>(profilePic.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OUsersCompanion(')
          ..write('userID: $userID, ')
          ..write('fullName: $fullName, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('gender: $gender, ')
          ..write('phoneNo: $phoneNo, ')
          ..write('profilePic: $profilePic')
          ..write(')'))
        .toString();
  }
}

class $OUsersTable extends OUsers with TableInfo<$OUsersTable, OUser> {
  final GeneratedDatabase _db;
  final String _alias;
  $OUsersTable(this._db, [this._alias]);
  final VerificationMeta _userIDMeta = const VerificationMeta('userID');
  GeneratedTextColumn _userID;
  @override
  GeneratedTextColumn get userID => _userID ??= _constructUserID();
  GeneratedTextColumn _constructUserID() {
    return GeneratedTextColumn('user_i_d', $tableName, false,
        $customConstraints: 'NOT NULL UNIQUE');
  }

  final VerificationMeta _fullNameMeta = const VerificationMeta('fullName');
  GeneratedTextColumn _fullName;
  @override
  GeneratedTextColumn get fullName => _fullName ??= _constructFullName();
  GeneratedTextColumn _constructFullName() {
    return GeneratedTextColumn('full_name', $tableName, false,
        maxTextLength: 100);
  }

  final VerificationMeta _emailMeta = const VerificationMeta('email');
  GeneratedTextColumn _email;
  @override
  GeneratedTextColumn get email => _email ??= _constructEmail();
  GeneratedTextColumn _constructEmail() {
    return GeneratedTextColumn('email', $tableName, false,
        $customConstraints: 'NOT NULL UNIQUE');
  }

  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  GeneratedTextColumn _password;
  @override
  GeneratedTextColumn get password => _password ??= _constructPassword();
  GeneratedTextColumn _constructPassword() {
    return GeneratedTextColumn('password', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _genderMeta = const VerificationMeta('gender');
  GeneratedTextColumn _gender;
  @override
  GeneratedTextColumn get gender => _gender ??= _constructGender();
  GeneratedTextColumn _constructGender() {
    return GeneratedTextColumn(
      'gender',
      $tableName,
      true,
    );
  }

  final VerificationMeta _phoneNoMeta = const VerificationMeta('phoneNo');
  GeneratedTextColumn _phoneNo;
  @override
  GeneratedTextColumn get phoneNo => _phoneNo ??= _constructPhoneNo();
  GeneratedTextColumn _constructPhoneNo() {
    return GeneratedTextColumn(
      'phone_no',
      $tableName,
      true,
    );
  }

  final VerificationMeta _profilePicMeta = const VerificationMeta('profilePic');
  GeneratedBlobColumn _profilePic;
  @override
  GeneratedBlobColumn get profilePic => _profilePic ??= _constructProfilePic();
  GeneratedBlobColumn _constructProfilePic() {
    return GeneratedBlobColumn(
      'profile_pic',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [userID, fullName, email, password, gender, phoneNo, profilePic];
  @override
  $OUsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'o_users';
  @override
  final String actualTableName = 'o_users';
  @override
  VerificationContext validateIntegrity(Insertable<OUser> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_i_d')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_i_d'], _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name'], _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email'], _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password'], _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender'], _genderMeta));
    }
    if (data.containsKey('phone_no')) {
      context.handle(_phoneNoMeta,
          phoneNo.isAcceptableOrUnknown(data['phone_no'], _phoneNoMeta));
    }
    if (data.containsKey('profile_pic')) {
      context.handle(
          _profilePicMeta,
          profilePic.isAcceptableOrUnknown(
              data['profile_pic'], _profilePicMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userID};
  @override
  OUser map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return OUser.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $OUsersTable createAlias(String alias) {
    return $OUsersTable(_db, alias);
  }
}

class Cart extends DataClass implements Insertable<Cart> {
  final String userID;
  final String productID;
  final int productQuantity;
  final int totalPrice;
  Cart(
      {@required this.userID,
      @required this.productID,
      @required this.productQuantity,
      @required this.totalPrice});
  factory Cart.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    return Cart(
      userID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}user_i_d']),
      productID: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}product_i_d']),
      productQuantity: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}product_quantity']),
      totalPrice: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}total_price']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userID != null) {
      map['user_i_d'] = Variable<String>(userID);
    }
    if (!nullToAbsent || productID != null) {
      map['product_i_d'] = Variable<String>(productID);
    }
    if (!nullToAbsent || productQuantity != null) {
      map['product_quantity'] = Variable<int>(productQuantity);
    }
    if (!nullToAbsent || totalPrice != null) {
      map['total_price'] = Variable<int>(totalPrice);
    }
    return map;
  }

  CartsCompanion toCompanion(bool nullToAbsent) {
    return CartsCompanion(
      userID:
          userID == null && nullToAbsent ? const Value.absent() : Value(userID),
      productID: productID == null && nullToAbsent
          ? const Value.absent()
          : Value(productID),
      productQuantity: productQuantity == null && nullToAbsent
          ? const Value.absent()
          : Value(productQuantity),
      totalPrice: totalPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(totalPrice),
    );
  }

  factory Cart.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Cart(
      userID: serializer.fromJson<String>(json['userID']),
      productID: serializer.fromJson<String>(json['productID']),
      productQuantity: serializer.fromJson<int>(json['productQuantity']),
      totalPrice: serializer.fromJson<int>(json['totalPrice']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userID': serializer.toJson<String>(userID),
      'productID': serializer.toJson<String>(productID),
      'productQuantity': serializer.toJson<int>(productQuantity),
      'totalPrice': serializer.toJson<int>(totalPrice),
    };
  }

  Cart copyWith(
          {String userID,
          String productID,
          int productQuantity,
          int totalPrice}) =>
      Cart(
        userID: userID ?? this.userID,
        productID: productID ?? this.productID,
        productQuantity: productQuantity ?? this.productQuantity,
        totalPrice: totalPrice ?? this.totalPrice,
      );
  @override
  String toString() {
    return (StringBuffer('Cart(')
          ..write('userID: $userID, ')
          ..write('productID: $productID, ')
          ..write('productQuantity: $productQuantity, ')
          ..write('totalPrice: $totalPrice')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      userID.hashCode,
      $mrjc(productID.hashCode,
          $mrjc(productQuantity.hashCode, totalPrice.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Cart &&
          other.userID == this.userID &&
          other.productID == this.productID &&
          other.productQuantity == this.productQuantity &&
          other.totalPrice == this.totalPrice);
}

class CartsCompanion extends UpdateCompanion<Cart> {
  final Value<String> userID;
  final Value<String> productID;
  final Value<int> productQuantity;
  final Value<int> totalPrice;
  const CartsCompanion({
    this.userID = const Value.absent(),
    this.productID = const Value.absent(),
    this.productQuantity = const Value.absent(),
    this.totalPrice = const Value.absent(),
  });
  CartsCompanion.insert({
    @required String userID,
    @required String productID,
    @required int productQuantity,
    @required int totalPrice,
  })  : userID = Value(userID),
        productID = Value(productID),
        productQuantity = Value(productQuantity),
        totalPrice = Value(totalPrice);
  static Insertable<Cart> custom({
    Expression<String> userID,
    Expression<String> productID,
    Expression<int> productQuantity,
    Expression<int> totalPrice,
  }) {
    return RawValuesInsertable({
      if (userID != null) 'user_i_d': userID,
      if (productID != null) 'product_i_d': productID,
      if (productQuantity != null) 'product_quantity': productQuantity,
      if (totalPrice != null) 'total_price': totalPrice,
    });
  }

  CartsCompanion copyWith(
      {Value<String> userID,
      Value<String> productID,
      Value<int> productQuantity,
      Value<int> totalPrice}) {
    return CartsCompanion(
      userID: userID ?? this.userID,
      productID: productID ?? this.productID,
      productQuantity: productQuantity ?? this.productQuantity,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userID.present) {
      map['user_i_d'] = Variable<String>(userID.value);
    }
    if (productID.present) {
      map['product_i_d'] = Variable<String>(productID.value);
    }
    if (productQuantity.present) {
      map['product_quantity'] = Variable<int>(productQuantity.value);
    }
    if (totalPrice.present) {
      map['total_price'] = Variable<int>(totalPrice.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CartsCompanion(')
          ..write('userID: $userID, ')
          ..write('productID: $productID, ')
          ..write('productQuantity: $productQuantity, ')
          ..write('totalPrice: $totalPrice')
          ..write(')'))
        .toString();
  }
}

class $CartsTable extends Carts with TableInfo<$CartsTable, Cart> {
  final GeneratedDatabase _db;
  final String _alias;
  $CartsTable(this._db, [this._alias]);
  final VerificationMeta _userIDMeta = const VerificationMeta('userID');
  GeneratedTextColumn _userID;
  @override
  GeneratedTextColumn get userID => _userID ??= _constructUserID();
  GeneratedTextColumn _constructUserID() {
    return GeneratedTextColumn('user_i_d', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _productIDMeta = const VerificationMeta('productID');
  GeneratedTextColumn _productID;
  @override
  GeneratedTextColumn get productID => _productID ??= _constructProductID();
  GeneratedTextColumn _constructProductID() {
    return GeneratedTextColumn('product_i_d', $tableName, false,
        $customConstraints: 'NOT NULL');
  }

  final VerificationMeta _productQuantityMeta =
      const VerificationMeta('productQuantity');
  GeneratedIntColumn _productQuantity;
  @override
  GeneratedIntColumn get productQuantity =>
      _productQuantity ??= _constructProductQuantity();
  GeneratedIntColumn _constructProductQuantity() {
    return GeneratedIntColumn('product_quantity', $tableName, false,
        $customConstraints: 'NOT NULL CHECK (product_quantity > 0)');
  }

  final VerificationMeta _totalPriceMeta = const VerificationMeta('totalPrice');
  GeneratedIntColumn _totalPrice;
  @override
  GeneratedIntColumn get totalPrice => _totalPrice ??= _constructTotalPrice();
  GeneratedIntColumn _constructTotalPrice() {
    return GeneratedIntColumn(
      'total_price',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [userID, productID, productQuantity, totalPrice];
  @override
  $CartsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'carts';
  @override
  final String actualTableName = 'carts';
  @override
  VerificationContext validateIntegrity(Insertable<Cart> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_i_d')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_i_d'], _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('product_i_d')) {
      context.handle(_productIDMeta,
          productID.isAcceptableOrUnknown(data['product_i_d'], _productIDMeta));
    } else if (isInserting) {
      context.missing(_productIDMeta);
    }
    if (data.containsKey('product_quantity')) {
      context.handle(
          _productQuantityMeta,
          productQuantity.isAcceptableOrUnknown(
              data['product_quantity'], _productQuantityMeta));
    } else if (isInserting) {
      context.missing(_productQuantityMeta);
    }
    if (data.containsKey('total_price')) {
      context.handle(
          _totalPriceMeta,
          totalPrice.isAcceptableOrUnknown(
              data['total_price'], _totalPriceMeta));
    } else if (isInserting) {
      context.missing(_totalPriceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {productID};
  @override
  Cart map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Cart.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CartsTable createAlias(String alias) {
    return $CartsTable(_db, alias);
  }
}

abstract class _$ObayDatabase extends GeneratedDatabase {
  _$ObayDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $OUsersTable _oUsers;
  $OUsersTable get oUsers => _oUsers ??= $OUsersTable(this);
  $CartsTable _carts;
  $CartsTable get carts => _carts ??= $CartsTable(this);
  OUserDAO _oUserDAO;
  OUserDAO get oUserDAO => _oUserDAO ??= OUserDAO(this as ObayDatabase);
  CartDAO _cartDAO;
  CartDAO get cartDAO => _cartDAO ??= CartDAO(this as ObayDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [oUsers, carts];
}
