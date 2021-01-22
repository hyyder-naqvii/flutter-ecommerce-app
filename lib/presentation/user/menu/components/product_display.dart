import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:flutter/material.dart';
class ProductDisplay extends StatelessWidget {
  final FSProduct product;
  const ProductDisplay({
    Key key, @required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext
  context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/product_details',arguments: Some(product)),
      child: FittedBox(
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: mainDarkColor,
                    width: 5,
                  )),

              child: FittedBox(
                child: Column(
                  children: [

                    if (product.productImage
                        .isNotEmpty) Image.memory(
                      product.productImage,

                      width: Responsive.width(45, context),
                      height: Responsive.height(
                          22, context),
                      fit: BoxFit.fill,
                    ) else Image.asset(
                        'lib/assets/images/no-image.png',
                      width: Responsive.width(45, context),

                      height: Responsive.height(
                          22, context),),

                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Center(
                        child: Text(
                          '\$${product.productPrice.value.getOrElse(null)}',
                          style: TextStyle(
                            color: textColor,
                            fontSize: Responsive.width(6, context),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,

                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: AutoSizeText(

                        // ignore: unnecessary_string_interpolations
                        '${product.productName.value.getOrElse(null)}',
                        style: TextStyle(
                          color: textColor,
                          fontSize: Responsive.width(4, context),

                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
