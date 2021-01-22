import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> empty(String input) {
 if(input.isNotEmpty){
   return right(input);
 }
 else{
   return left(ValueFailure.empty(failedValue: input));
 }
}
Either<ValueFailure<String>, String> exceedsLength(String input, int maxLength) {
  if(input.length <= maxLength+1){
    return right(input);
  }
  else{
    return left(ValueFailure.exceedsLength(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> multiLine(String input) {
  if(!input.contains('\n')){
    return right(input);
  }
  else{
    return left(ValueFailure.multiLine(failedValue: input));
  }
}
Either<ValueFailure<String>, String> priceZero(String input) {
  try{
    if(int.parse(input) > 0){
      return right(input);
    }
    else{
      return left(ValueFailure.productPriceZero(failedValue: input));
    }
  }
  catch(e){
    return left(ValueFailure.notANumber(failedValue: input));
  }

}

Either<ValueFailure<String>, String> priceTooLarge(String input, int maxPrice) {
  try{
    if(int.parse(input) <= maxPrice){
      return right(input);
    }
    else{
      return left(ValueFailure.productPriceTooLarge(failedValue: input, max: maxPrice));
    }
  }
  catch(e){
    return left(ValueFailure.notANumber(failedValue: input));
  }

}
Either<ValueFailure<String>, String> notANumber(String input) {
  const String regex = '^[0-9]+';
  if(RegExp(regex).hasMatch(input)){
    return right(input);
  }
  else{
    return left(ValueFailure.notANumber(failedValue: input));
  }
}



Either<ValueFailure<Uint8List>, Uint8List> imageEmpty(Uint8List input) {
  if(input != null){
    return right(input);
  }
  else{
    return left(ValueFailure.imageEmpty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
  r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length > 8) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  if(input.isEmpty){
    return right(input);
  }
  if (input.length >= 10 && input.length <= 12) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input.isNotEmpty && input.length < 100) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: input));
  }
}
