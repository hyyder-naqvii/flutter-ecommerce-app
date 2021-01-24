import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce_app/application/cart/cart_actor/cart_actor_bloc.dart';
import 'package:ecommerce_app/application/products/product_loader/product_loader_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/infrastructure/database/core/obay_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';

class CartDisplay extends StatelessWidget {
  final CartActorBloc actorBloc;
  final VoidCallback deleteEvent;
  final Cart cart;

  const CartDisplay({
    Key key,
    @required this.cart,
    @required this.actorBloc, @required this.deleteEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductLoaderBloc>(
      create: (context) => getIt<ProductLoaderBloc>()
        ..add(ProductLoaderEvent.getByProductID(cart.productID)),
      child: BlocBuilder<ProductLoaderBloc, ProductLoaderState>(
        builder: (context, state) {
          return Stack(children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
              width: double.infinity,
              height: Responsive.height(25, context),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: iconColorLight.withOpacity(0.7),
                    offset: Offset(0, 4),
                    blurRadius: 10),
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Responsive.height(15, context),
                    height: Responsive.height(15, context),
                    child: state.maybeMap(
                        loadSuccess: (product) => product.products.isNotEmpty
                            ? Image.memory(
                                product.products[0].productImage,
                              )
                            : Image.asset(
                                'lib/assets/images/no-image.png',
                                fit: BoxFit.cover,
                              ),
                        orElse: () => const Text('Image')),
                  ),
                   SizedBox(width: Responsive.height(2, context),),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          state.maybeMap(
                              orElse: () => 'No Product',
                              loadSuccess: (product) => product
                                  .products[0].productName.value
                                  .getOrElse(null)),
                          style: TextStyle(
                            color: textColor,
                            fontSize: Responsive.width(5, context),
                          ),
                          maxLines: 1,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'OOGLOO',
                          style: TextStyle(
                            color: textColorLight,
                            fontSize: Responsive.width(5, context),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(1, context),
                        ),
                        Text(
                          state.maybeMap(
                              orElse: () => 'No Product',
                              loadSuccess: (product) =>
                                  '\$${product.products[0].productPrice.value.getOrElse(null)}'),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: mainDarkColor,
                            fontSize: Responsive.width(5, context),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(1, context),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: Responsive.height(4, context),
                              height: Responsive.height(4, context),
                              child: FlatButton(
                                padding: const EdgeInsets.all(2),
                                color: Colors.grey[300],
                                onPressed: () => context
                                    .read<CartActorBloc>()
                                    .add(CartActorEvent.decreaseQuantity(cart)),
                                child: Center(
                                  child: Icon(
                                    Icons.remove,
                                    size: Responsive.width(6, context),
                                    color: textColor,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            Container(
                              width: Responsive.height(7, context),
                              height: Responsive.height(4, context),
                              color: Colors.grey[300],
                              child: Center(
                                child: Text('${cart.productQuantity}',style: TextStyle(
                                  fontSize: Responsive.width(5, context),
                                  color: textColor
                                ),),
                              ),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            SizedBox(
                              width: Responsive.height(4, context),
                              height: Responsive.height(4, context),
                              child: FlatButton(
                                padding: const EdgeInsets.all(2),
                                color: Colors.grey[300],
                                onPressed: () => actorBloc
                                    .add(CartActorEvent.increaseQuantity(cart)),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: Responsive.width(6, context),
                                    color: textColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: deleteEvent,
                icon: Icon(
                  Icons.cancel_outlined,
                  color: iconColorLight,
                  size: Responsive.width(6, context),
                ),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
