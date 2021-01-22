import 'package:ecommerce_app/application/products/product_loader/product_loader_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/hardcoded/product_categories.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final ProductCategory category;
  final ProductLoaderBloc eventHandlerBloc;
  const CategoryTile({
    Key key,
    @required this.category, @required this.eventHandlerBloc,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => eventHandlerBloc.add(ProductLoaderEvent.getByCategory(category.categoryName)),
      child: Container(
        width: Responsive.width(25, context),
        height: Responsive.height(8, context),
        margin: EdgeInsets.symmetric(
            horizontal: Responsive.width(2.5, context),
            vertical: Responsive.height(2.5, context)),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: iconColorMain.withOpacity(0.8),
              offset: const Offset(0, 3),
              blurRadius: 15,
            ),

          ],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(
                  category.categoryImage,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.white.withOpacity(0.1)
                  ]),
                ),
              ),
            ),
            Center(
                child: Text(
              category.categoryName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: Responsive.height(2.2, context),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            )),
          ],
        ),
      ),
    );
  }
}
