import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce_app/application/products/product_loader/product_loader_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/infrastructure/database/core/obay_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../injection.dart';

class CheckOutItemDisplay extends StatelessWidget {

  final Cart cart;

  const CheckOutItemDisplay({
    Key key, this.cart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductLoaderBloc>(

      create: (context) => getIt<ProductLoaderBloc>()..add(ProductLoaderEvent.getByProductID(cart.productID)),

      child: BlocBuilder<ProductLoaderBloc,ProductLoaderState>(
        builder: (context,state){
          return state.maybeMap(
              loadSuccess: (p) => Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width : Responsive.width(22,context),
                    height : Responsive.width(22,context),
                    child: p.products.isNotEmpty ?
                    Image.memory( p.products[0].productImage):
                    Image.asset('lib/assets/images/no-image.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      AutoSizeText(
                        p.products[0].productName.value.getOrElse(null),
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: Responsive.width(5, context),
                          color: textColor,
                        ),
                      ),
                      AutoSizeText(
                        'OOGLOO',
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: Responsive.width(4, context),
                            color: textColorLight
                        ),
                      ),
                      AutoSizeText(
                        '${cart.productQuantity}',
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: Responsive.width(6, context),
                          color: mainDarkColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
              orElse: ()=>Shimmer.fromColors(baseColor: iconColorMain,
                  highlightColor: iconColorLight,
                  child: const Center(child:
                  Text('Loading'))));
        },

      ),
    );
  }
}
