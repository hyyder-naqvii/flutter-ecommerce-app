import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key key,
    @required this.product,
  }) : super(key: key);

  final FSProduct product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Ink(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: iconColorLight.withOpacity(0.5),
                  offset: const Offset(0, 1),
                  blurRadius: 10),
            ],
            color: Colors.white),

        child: InkWell(
          splashColor: mainColor.withOpacity(0.3),
          onTap: () {
            Navigator.of(context)
                .pushNamed('/add_products_page', arguments: product);
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: Responsive.width(25, context),
                  height: Responsive.width(25, context),
                  child: Card(
                    elevation: 0,
                    child: product.productImageURL.isNotEmpty?Image.network(product.productImageURL, fit: BoxFit.fill,):
                    Image.asset('lib/assets/images/no-image.png',
                    fit: BoxFit.fill,),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      product.productName.value.getOrElse(null),
                      style: TextStyle(
                          color: textColorLight,
                          fontSize: Responsive.width(4, context),
                          letterSpacing: 1),
                    ),
                    SizedBox(
                      height: Responsive.height(1, context),
                    ),
                    AutoSizeText(
                      'OOGLOO',
                      style: TextStyle(
                          color: textColorLight.withOpacity(0.7),
                          fontSize: Responsive.width(3.5, context),
                          letterSpacing: 1),

                    ),
                    SizedBox(
                      height: Responsive.height(2, context),
                    ),
                    AutoSizeText(
                      "\$${product.productPrice.value.getOrElse(null)}",
                      style: TextStyle(
                          fontSize: Responsive.width(9 , context),
                          fontWeight: FontWeight.bold,
                          color: mainColor,
                          letterSpacing: 2),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
