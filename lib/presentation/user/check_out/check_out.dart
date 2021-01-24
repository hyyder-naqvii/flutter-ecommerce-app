import 'package:ecommerce_app/application/cart/cart_actor/cart_actor_bloc.dart';
import 'package:ecommerce_app/application/cart/cart_loader/cart_loader_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/custom/gradient_button.dart';
import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';
import 'package:ecommerce_app/infrastructure/database/core/obay_database.dart';
import 'package:ecommerce_app/presentation/admin/dashboard/components/skeleton_product.dart';
import 'package:ecommerce_app/presentation/components/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';
import 'components/checkout_item_display.dart';

class CheckOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Widget Build');
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartLoaderBloc>(
          create: (context) => getIt<CartLoaderBloc>()
            ..add(const CartLoaderEvent.watchUserCarts()),
        ),
        BlocProvider<CartActorBloc>(
          create: (context) => getIt<CartActorBloc>()
            ..add(CartActorEvent.calculateTotal(getIt<IAuthenticate>()
                .getSignedInUser()
                .uID
                .value
                .getOrElse(null))),
        ),
      ],
      child: Scaffold(
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const ScreenTitle(title: 'Checkout'),
              SizedBox(
                height: Responsive.height(2, context),
              ),
              BlocBuilder<CartLoaderBloc, CartLoaderState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) {
                      return Container();
                    },
                    loadingCarts: (_) {
                      return const CartLoading();
                    },
                    loadSuccess: (cart) {
                      return cart.carts.isNotEmpty
                          ? Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CheckoutItemBuilder(
                                carts: cart.carts,
                              ),
                              Divider(
                                color: iconColorLight.withOpacity(0.6),
                                height: Responsive.height(3, context),
                              ),
                              const CheckoutBuilder(),
                            ],
                          )
                          : Expanded(
                            child: Text(
                                'No Products Added to Cart!',
                                style: TextStyle(
                                  fontSize: Responsive.width(6, context),
                                  color: textColorLight,
                                ),
                              ),
                          );
                    },
                    loadFailure: (_) {
                      return Container();
                    },
                  );
                },
              ),
              SizedBox(height: Responsive.height(2, context),),
              BlocBuilder<CartActorBloc,CartActorState>(
                builder: (context,state){
                  return buildConfirmationButton(context);
                },

              ),
            ],

          ),
        ),

      ),
    );
  }

  Padding buildConfirmationButton(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    //width: Responsive.width(20, context),
                    height: Responsive.height(8, context),
                    child: GradientButton(
                      gradientColors: [mainDarkColor, mainColor],
                      label: Text(
                        'Buy',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Responsive.width(4.5, context),
                            fontWeight: FontWeight.bold),
                      ),
                      onPressedCallback: () {
                        Navigator.pushReplacementNamed(context, '/confirmation');
                        context.read<CartActorBloc>().add(CartActorEvent.deleteAll(getIt<IAuthenticate>()
                            .getSignedInUser()
                            .uID
                            .value
                            .getOrElse(null)));
                      },
                    ),
                  ),
                );
  }
}

class CheckoutBuilder extends StatelessWidget {
  const CheckoutBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartActorBloc, CartActorState>(
      builder: (context, state) {
        return state.maybeMap(
            totalRequested: (checkout) {
              return Container(
                color: Colors.grey[100],
                child: Column(
                  children: [
                     CheckoutInfo(
                      labelColor: textColorLight,
                      label: 'Subtotal',
                      data: checkout.checkOutData.subTotal,
                       dataSymbolPrefix: '\$',
                    ),
                    CheckoutInfo(
                      labelColor: textColorLight,
                      label: 'Discount',
                      data: checkout.checkOutData.discount,
                      dataSymbolSuffix: '%',
                    ),
                    CheckoutInfo(
                      labelColor: textColorLight,
                      label: 'Shipping',
                      data: checkout.checkOutData.shipping,
                      dataSymbolPrefix: '\$',
                    ),
                    CheckoutInfo(
                      labelColor: textColor,
                      label: 'Total',
                      data: checkout.checkOutData.calculateTotal().ceil(),
                      dataSymbolPrefix: '\$',
                    ),
                  ],
                ),
              );
            },
            orElse: () =>
                const Text('Loading Total'));
      },
    );
  }
}

class CheckoutInfo extends StatelessWidget {
  final String label;
  final int data;
  final String dataSymbolPrefix;
  final String dataSymbolSuffix;
  final Color labelColor;

  const CheckoutInfo({
    Key key,
    @required this.label,
    @required this.data,
    @required this.labelColor, this.dataSymbolPrefix, this.dataSymbolSuffix,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: Responsive.width(5, context), color: labelColor),
        ),
        Text(
          '${dataSymbolPrefix??''}$data ${dataSymbolSuffix??''}',
          style: TextStyle(
            fontSize: Responsive.width(5, context),
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class CheckoutItemBuilder extends StatelessWidget {
  final List<Cart> carts;

  const CheckoutItemBuilder({
    Key key,
    @required this.carts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: carts.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
            width: Responsive.width(30, context),
            height: Responsive.height(15, context),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: iconColorLight.withOpacity(0.7), blurRadius: 15),
              ],
            ),
            child: CheckOutItemDisplay(
              cart: carts[index],
            ),
          );
        });
  }
}

class CartLoading extends StatelessWidget {
  const CartLoading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return const SkeletonProduct();
          }),
    );
  }
}
