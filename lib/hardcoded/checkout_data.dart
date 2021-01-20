import 'dart:math';

import 'package:flutter/foundation.dart';

class CheckOutData{
  final int subTotal;
  final int discount;
  final int shipping;

  CheckOutData({@required this.subTotal, @required this.discount, @required this.shipping,});
   factory CheckOutData.fromSubTotal(int _subTotal) => CheckOutData(subTotal: _subTotal, shipping: 15, discount: 10
   );

   double calculateTotal(){
    return (subTotal + shipping)-((discount/100)*subTotal);
  }

}