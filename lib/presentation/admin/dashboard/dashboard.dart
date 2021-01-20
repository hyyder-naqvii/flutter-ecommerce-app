import 'package:ecommerce_app/application/auth/auth_bloc/bloc/auth_bloc.dart';
import 'package:ecommerce_app/application/products/product_loader/product_loader_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/domain/auth/interface/iauthenticate.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_failure.dart';
import 'package:ecommerce_app/presentation/components/gradient_icon.dart';
import 'package:ecommerce_app/presentation/components/screen_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../injection.dart';
import 'components/product_tile.dart';
import 'components/skeleton_product.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ProductLoaderBloc>(
            create: (context) => getIt<ProductLoaderBloc>()
              ..add(const ProductLoaderEvent.watchAllProducts()),
          ),
          BlocProvider<AuthBloc>(
            create: (context) => getIt<AuthBloc>()

          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
                color: iconColorMain,
                iconSize: Responsive.width(6, context),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: IconButton(icon: Icon(
                  Icons.exit_to_app,
                  size: Responsive.width(7, context),
                  color: iconColorMain,
                ), onPressed: (){
                  context.read<AuthBloc>().add(const AuthEvent.signOut());
                  Navigator.popUntil(context, ModalRoute.withName('/'));

                }),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const ScreenTitle(title: 'Product Dashboard'),
                SizedBox(
                  height: Responsive.height(2, context),
                ),
                BlocBuilder<ProductLoaderBloc, ProductLoaderState>(
                  builder: (context, state) {
                    return state.map(
                        initial: (_) => Container(),
                        loadingProducts: (_) => const LoadingProducts(),
                        loadSuccess: (products) => ProductsView(
                              products: products.products,
                            ),
                        loadFailure: (failure) => ProductLoadError(
                              failure: failure.productFailure,
                            ));
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.of(context)
                  .pushNamed('/add_products_page',arguments: null);
            },
            splashColor: mainColor,
            backgroundColor: mainColor,
            child: GradientIcon(
              icon: Icons.add, gradient: LinearGradient(
              colors: [Colors.grey[300],Colors.white],
            ), size: Responsive.width(10, context),
            ),
          ),
        ),

    );
  }
}

class ProductsView extends StatelessWidget {
  final List<FSProduct> products;

  const ProductsView({
    Key key,
    @required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductTile(product: products[index]);
          }),
    );
  }
}

class ProductLoadError extends StatelessWidget {
  final ProductFailure failure;

  const ProductLoadError({
    Key key,
    this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: Colors.red[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Shimmer.fromColors(
              baseColor: Colors.red,
              highlightColor: Colors.redAccent,
              child: Icon(
                Icons.error,
                color: Colors.red,
                size: Responsive.width(70, context),
              ),
            ),
            failure.maybeMap(
                permissionDenied: (f) => Text(
                      'Permission Denied',
                      style: TextStyle(
                        fontSize: Responsive.width(10, context),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        color: Colors.red,
                      ),
                    ),
                orElse: () => Text(
                      'UnExpected Error Occured',
                      style: TextStyle(
                        fontSize: Responsive.width(10, context),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        color: Colors.red,
                      ),
                    )),
          ],
        ),
      ),
    );
  }
}

class LoadingProducts extends StatelessWidget {
  const LoadingProducts({
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
