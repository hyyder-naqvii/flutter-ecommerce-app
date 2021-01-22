import 'package:ecommerce_app/config/configuration.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
class ProductMenuSkeleton extends StatelessWidget {
  const ProductMenuSkeleton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          Shimmer.fromColors(
              highlightColor:
              iconColorLight.withOpacity(0.5),
              baseColor:
              iconColorLight.withOpacity(0.3),
              child: Container(
                width: Responsive.width(45, context),
                height: Responsive.width(40, context),
                color: mainColor,
              )),
          const SizedBox(height: 5,),
          Shimmer.fromColors(
              highlightColor:
              iconColorLight.withOpacity(0.5),
              baseColor:
              iconColorLight.withOpacity(0.3),
              child: Container(
                width: Responsive.width(45, context),
                height: Responsive.width(10, context),
                color: mainColor,
              )),
        ],
      ),
    );
  }
}