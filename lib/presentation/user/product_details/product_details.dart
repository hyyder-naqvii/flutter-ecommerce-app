import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/application/cart/cart_actor/cart_actor_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:ecommerce_app/infrastructure/database/core/obay_database.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readmore/readmore.dart';

import '../../../injection.dart';

class ProductDetails extends StatelessWidget {
  final Option<FSProduct> product;

  const ProductDetails({Key key, @required this.product}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartActorBloc>(
      create: (context) => getIt<CartActorBloc>(),
      child: BlocListener<CartActorBloc, CartActorState>(
        listener: (context, state) {
          state.maybeMap(
            actionSuccess: (_) => FlushbarHelper.createSuccess(message: 'Product Added To Cart').show(context),
            actionFailure: (_) => FlushbarHelper.createError(message: 'Failed To Add Product').show(context),
            orElse: () => null,
          );
        },
        child: Scaffold(
          appBar: buildAppBar(context),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildImageDisplay(context),
                SizedBox(
                  height: Responsive.height(3.5, context),
                ),
                AutoSizeText(
                  product.getOrElse(null).productName.value.getOrElse(null),
                  style: TextStyle(
                      fontSize: Responsive.width(7.5, context),
                      color: textDarkColor),
                ),
                SizedBox(
                  height: Responsive.height(2.5, context),
                ),
                buildPriceAndCategorySection(context),
                SizedBox(
                  height: Responsive.height(2.5, context),
                ),
                Text(
                  'Description',
                  style: TextStyle(
                    color: textColor,
                    fontSize: Responsive.width(6, context),
                  ),
                ),
                buildDescriptionBox(context),
                SizedBox(
                  height: Responsive.height(2, context),
                ),

                BlocBuilder<CartActorBloc, CartActorState>(
                    builder: (context, state) {
                  return buildAddtoCartButton(context);
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox buildAddtoCartButton(BuildContext context) {
    return SizedBox(
                  width: double.infinity,
                  child: FlatButton(
                    padding: EdgeInsets.all(20),
                    color: mainDarkColor,
                    onPressed: () {
                      final Cart cart = Cart(
                        userID: getIt<IAuthenticate>()
                            .getSignedInUser()
                            .uID
                            .value
                            .getOrElse(null),
                        productID:
                            product.getOrElse(null).uID.value.getOrElse(null),
                        productQuantity: 1,
                        totalPrice: int.parse(product
                            .getOrElse(null)
                            .productPrice
                            .value
                            .getOrElse(null)),
                      );
                      context
                          .read<CartActorBloc>()
                          .add(CartActorEvent.addCart(cart));
                    },
                    child: Text(
                      'Add To Cart',
                      style: TextStyle(
                        fontSize: Responsive.width(4.5, context),
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
  }

  Container buildDescriptionBox(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: mainDarkColor, width: 2),
      ),
      height: Responsive.height(30, context),
      width: double.infinity,
      child: ReadMoreText(
        product.getOrElse(null).productDescription.value.getOrElse(null),
        style: TextStyle(
          fontSize: Responsive.width(4.5, context),
          color: textColorLight,
        ),
        trimLines: 5,
        colorClickableText: mainDarkColor,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Show more',
        trimExpandedText: 'Show less',
        moreStyle: TextStyle(
            fontSize: Responsive.width(4, context),
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Row buildPriceAndCategorySection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$${product.getOrElse(null).productPrice.value.getOrElse(null)}',
          style: TextStyle(
              color: mainDarkColor,
              fontSize: Responsive.width(6.2, context),
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
        ),
        Container(
          width: Responsive.width(25, context),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: mainDarkColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              product.getOrElse(null).category,
              style: TextStyle(
                fontSize: Responsive.width(4, context),
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container buildImageDisplay(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: mainDarkColor,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 15), color: iconColorLight, blurRadius: 30),
        ],
      ),
      width: double.infinity,
      height: Responsive.height(30, context),
      child: product.getOrElse(null).productImageURL.isNotEmpty
          ? Image.network(
             product.getOrElse(null).productImageURL,
            )
          : Image.asset('lib/assets/images/no-image.png'),
    );
  }
}
