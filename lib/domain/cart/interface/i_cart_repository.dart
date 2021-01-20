import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/infrastructure/database/core/obay_database.dart';

abstract class ICartRepository{
  Future<Either<String,Unit>> addCart(CartsCompanion cart);
  Future<Either<String,Unit>> changeProductQuantity(CartsCompanion cart);
  Future<Either<String,Unit>> removeFromCart(CartsCompanion cart);
  Future<Either<String,List<Cart>>> getUserCart(String uID);
  Future<Either<String,Cart>> getCartFromProductID(String uID,String productID);
  Stream<Either<String,List<Cart>>> watchUserCart(String uID);
  Future<bool> cartAlreadyExists(CartsCompanion cart);

  Future deleteAllItemsFromCart(String uID);


}