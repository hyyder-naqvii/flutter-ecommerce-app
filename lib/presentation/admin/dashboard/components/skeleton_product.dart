import 'package:ecommerce_app/config/configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
class SkeletonProduct extends StatelessWidget {
  const SkeletonProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [

          BoxShadow(
            color: iconColorLight.withOpacity(0.3),
            spreadRadius: 0.1,
            blurRadius: 6,
            offset: const Offset(0,5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Shimmer.fromColors(
            highlightColor:
            iconColorLight.withOpacity(0.5),
            baseColor:
            iconColorLight.withOpacity(0.3),
            child: Container(
              color: Colors.white,
              width: Responsive.width(25, context),
              height: Responsive.width(25, context),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Shimmer.fromColors(
                highlightColor:
                iconColorLight.withOpacity(0.5),
                baseColor:
                iconColorLight.withOpacity(0.3),
                child: Container(
                  color: Colors.white,
                  width:
                  Responsive.width(55, context),
                  height:
                  Responsive.width(6, context),
                ),
              ),
              SizedBox(height: Responsive.height(1.5, context),),
              Shimmer.fromColors(
                highlightColor:
                iconColorLight.withOpacity(0.5),
                baseColor:
                iconColorLight.withOpacity(0.3),
                child: Container(
                  color: Colors.white,
                  width:
                  Responsive.width(35, context),
                  height:
                  Responsive.width(5, context),
                ),
              ),
              SizedBox(height: Responsive.height(1.5, context),),
              Shimmer.fromColors(
                highlightColor:
                iconColorLight.withOpacity(0.5),
                baseColor:
                iconColorLight.withOpacity(0.3),
                child: Container(
                  color: Colors.white,
                  width:
                  Responsive.width(25, context),
                  height:
                  Responsive.width(4, context),
                ),
              ),
            ],

          ),
        ],
      ),
    );
  }
}
