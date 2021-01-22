import 'package:ecommerce_app/application/products/product_loader/product_loader_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:ecommerce_app/hardcoded/product_categories.dart';
import 'package:ecommerce_app/injection.dart';
import 'package:ecommerce_app/presentation/components/screen_title.dart';
import 'package:ecommerce_app/presentation/user/menu/components/product_menu_skeleton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/category_tile.dart';
import 'components/product_display.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          color: iconColorMain,
          iconSize: Responsive.width(5.5, context),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.account_circle),
              iconSize: Responsive.width(6, context),
              color: iconColorMain,
              onPressed: () {
                Navigator.of(context).pushNamed('/user_profile');
              }),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: BlocProvider<ProductLoaderBloc>(
          create: (context) => getIt<ProductLoaderBloc>()
            ..add(const ProductLoaderEvent.getAllProducts()),
          child: BlocBuilder<ProductLoaderBloc, ProductLoaderState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchBox(),
                  const SizedBox(
                    height: 25,
                  ),
                  buildCategoryHeader(context),
                  buildCategoryTiles(BlocProvider.of<ProductLoaderBloc>(context,
                      listen: false)),
                  Text(
                    'Products',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: textColor,
                      fontSize: Responsive.width(6, context),
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: state.map(
                    initial: (_) => Container(),
                    loadingProducts: (_) => const ProductLoading(),
                    loadSuccess: (s) => s.products.isNotEmpty
                        ? ProductDisplaySection(
                            products: s.products,
                          )
                        : Container(),
                    loadFailure: (_) => Container(),
                  )),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Row buildCategoryHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ScreenTitle(title: 'Categories'),
        GestureDetector(
          onTap: () => context
              .read<ProductLoaderBloc>()
              .add(ProductLoaderEvent.getAllProducts()),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            width: Responsive.width(15, context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [mainDarkColor, mainColor],
                )),
            child: Center(
              child: Text(
                'All',
                style: TextStyle(
                  fontSize: Responsive.width(4, context),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  SingleChildScrollView buildCategoryTiles(ProductLoaderBloc eventHandlerBloc) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: productCategories
            .map(
              (element) => CategoryTile(
                category: element,
                eventHandlerBloc: eventHandlerBloc,
              ),
            )
            .toList(),
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              color: iconColorMain.withOpacity(0.25),
              blurRadius: 15,
            ),
          ]),
      child: TextFormField(
        decoration: formStyleSearchBox,
        cursorColor: iconColorMain,
        style: const TextStyle(
            color: Color(0xff707070), letterSpacing: 2, fontSize: 20),
      ),
    );
  }
}

class ProductDisplaySection extends StatelessWidget {
  final List<FSProduct> products;

  const ProductDisplaySection({
    Key key,
    @required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.5),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return ProductDisplay(
          product: products[index],
        );
      },
    );
  }
}

class ProductLoading extends StatelessWidget {
  const ProductLoading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.8),
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return const ProductMenuSkeleton();
      },
    );
  }
}
