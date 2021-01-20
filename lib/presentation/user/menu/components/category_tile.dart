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
        width: Responsive.width(30, context),
        height: Responsive.height(10, context),
        margin: EdgeInsets.symmetric(
            horizontal: Responsive.width(2.5, context),
            vertical: Responsive.height(2.5, context)),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: iconColorMain.withOpacity(0.3),
              offset: const Offset(0, 5),
              blurRadius: 5,
            ),
            BoxShadow(
              color: iconColorMain.withOpacity(0.5),
              offset: const Offset(0, 10),
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
                    Colors.black.withOpacity(0.5),
                    mainDarkColor.withOpacity(0.2)
                  ]),
                ),
              ),
            ),
            Center(
                child: Text(
              category.categoryName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: Responsive.width(4.5, context),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            )),
          ],
        ),
      ),
    );
  }
}
