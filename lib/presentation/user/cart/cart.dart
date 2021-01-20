import 'package:ecommerce_app/application/cart/cart_actor/cart_actor_bloc.dart';
import 'package:ecommerce_app/application/cart/cart_loader/cart_loader_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/custom/gradient_button.dart';
import 'package:ecommerce_app/presentation/admin/dashboard/components/skeleton_product.dart';
import 'package:ecommerce_app/presentation/components/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';
import 'components/cart_display.dart';

class CartScreen extends StatelessWidget {
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
          create: (context) => getIt<CartActorBloc>(),
        ),
      ],
      child: Scaffold(
        appBar: buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenTitle(title: 'Cart'),
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
                          ? Expanded(
                              child:
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: cart.carts.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return CartDisplay(
                                      cart: cart.carts[index],
                                      actorBloc: context.read<CartActorBloc>(), deleteEvent: () {
                                      context.read<CartActorBloc>().add(CartActorEvent.deleteCart(cart.carts[index]));
                                      Navigator.of(context).popAndPushNamed('/cart');
                                    }
                                    );
                                  }),
                            )
                          : Text(
                              'No Products Added to Cart!',
                              style: TextStyle(
                                fontSize: Responsive.width(6, context),
                                color: textColorLight,
                              ),
                            );
                    },
                    loadFailure: (_) {
                      return Container();
                    },
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: BlocBuilder<CartLoaderBloc,CartLoaderState>(
          builder: (context,state){
            return state.maybeMap(
                loadSuccess: (c) => c.carts.isNotEmpty ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: SizedBox(
                    //width: Responsive.width(20, context),
                    height: Responsive.height(8, context),
                    child: GradientButton(
                      gradientColors: [mainDarkColor, mainColor],
                      label: Text(
                        'Continue',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Responsive.width(4.5, context),
                            fontWeight: FontWeight.bold),
                      ),
                      onPressedCallback: () {

                          Navigator.pushNamed(context, '/checkout');
                      },
                    ),
                  ),
                ): Container(),
                orElse: () => Container());
          },
        ),
      ),
    );
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
