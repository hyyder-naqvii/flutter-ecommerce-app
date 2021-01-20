import 'package:flutter/foundation.dart';

class ProductCategory {
  final String categoryName;
  final String categoryImage;

  const ProductCategory(
      {@required this.categoryName, @required this.categoryImage});
}

List<ProductCategory> productCategories = [
  const ProductCategory(categoryName: 'Men', categoryImage: 'lib/assets/images/man_category.png'),
  const ProductCategory(categoryName: 'Women', categoryImage: 'lib/assets/images/woman_category.png'),
  const ProductCategory(categoryName: 'Children', categoryImage: 'lib/assets/images/children_category.png'),
];

List<String> get getProductCategoryNames {
  List<String> categoryNames = [];
  productCategories.forEach((productCategory) {
    categoryNames.add(productCategory.categoryName);
  });
  return categoryNames;
}
