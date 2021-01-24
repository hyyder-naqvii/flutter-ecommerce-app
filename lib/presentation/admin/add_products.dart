import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/application/products/product_form/product_form_bloc.dart';
import 'package:ecommerce_app/config/configuration.dart';
import 'package:ecommerce_app/custom/gradient_button.dart';
import 'package:ecommerce_app/domain/entities/fs_product.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_description.dart';
import 'package:ecommerce_app/domain/product/value_objects/product_name.dart';
import 'package:ecommerce_app/hardcoded/product_categories.dart';
import 'package:ecommerce_app/presentation/components/circular_button_with_border.dart';
import 'package:ecommerce_app/presentation/components/gradient_circle_avatar.dart';
import 'package:ecommerce_app/presentation/components/image_picker.dart';
import 'package:ecommerce_app/presentation/components/screen_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class AddProducts extends StatelessWidget {
  final FSProduct product;

  const AddProducts({Key key, @required this.product}) : super(key: key);

  Widget _showSaveProgress(bool isSaving, String label, BuildContext context) {
    return isSaving
        ? SizedBox(
            width: Responsive.width(5, context),
            height: Responsive.width(5, context),
            child: const CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 2,
            ))
        : Text(label,
            style: TextStyle(
                color: Colors.white, fontSize: Responsive.width(4, context)));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductFormBloc>(
      create: (context) => getIt<ProductFormBloc>()..add( ProductFormEvent.initializeProduct(product != null ? Some(product) : const None())),
      child: Scaffold(
        appBar: buildAppBar(context),
        body: BlocConsumer<ProductFormBloc, ProductFormState>(
          listener: (context,state){
           if(state.saved){
             Navigator.of(context).pop();
           }
          },
            builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ScreenTitle(
                      title: state.isEditing ? "Edit Product" : "Add Product"),
                  SizedBox(height: Responsive.width(3, context)),
                  Form(
                    autovalidateMode: state.showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildProductImageSection(context, state),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        ProductNameField(product: product),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        ProductDescriptionField(product: product),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        ProductCategoryField(product: product),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        ProductPriceField(product: product),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        GradientButton(
                            gradientColors: [mainDarkColor, mainColor],
                            label: _showSaveProgress(
                                state.isSaving, 'Save', context),
                            onPressedCallback: () {
                              context
                                  .read<ProductFormBloc>()
                                  .add(const ProductFormEvent.addProduct());

                            })
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class ProductPriceField extends StatelessWidget {
  const ProductPriceField({
    Key key,
    @required this.product,
  }) : super(key: key);

  final FSProduct product;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue: product?.productPrice?.value?.getOrElse(null),
        decoration: formStyleMain.copyWith(
          labelText: "Product Price",
          prefixIcon: Icon(
            Icons.attach_money,
            color: iconColorLight,
          ),
        ),
        keyboardType: TextInputType.number,
        onChanged: (value) {
          context
              .read<ProductFormBloc>()
              .add(ProductFormEvent.productPriceChanged(value));
        },
        validator: (_) => context
            .read<ProductFormBloc>()
            .state
            .product
            .productPrice
            .value
            .fold(
                (failure) => failure.maybeMap(
                    orElse: () => null,
                    productPriceZero: (_) => 'Price Cannot Be Zero',
                    productPriceTooLarge: (f) =>
                        'Product Price Too Large ${f.max}',
                    notANumber: (_) => 'Invalid Price!'),
                (_) => null));
  }
}

class ProductCategoryField extends StatelessWidget {
  const ProductCategoryField({
    Key key,
    @required this.product,
  }) : super(key: key);

  final FSProduct product;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: product != null ? product.category : getProductCategoryNames[0],
      decoration: formStyleMain.copyWith(labelText: "Category"),
      items:
          getProductCategoryNames.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String value) {
        context
            .read<ProductFormBloc>()
            .add(ProductFormEvent.productCategoryChanged(value));
      },
    );
  }
}

class ProductDescriptionField extends StatelessWidget {
  const ProductDescriptionField({
    Key key,
    @required this.product,
  }) : super(key: key);

  final FSProduct product;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue: product?.productDescription?.value?.getOrElse(null),
        decoration: formStyleMain.copyWith(
          labelText: "Product Description",
        ),
        maxLength: ProductDescription.maxLength,
        maxLines: null,
        minLines: 8,
        onChanged: (value) {
          context
              .read<ProductFormBloc>()
              .add(ProductFormEvent.productDescriptionChanged(value));
        },
        validator: (_) => context
            .read<ProductFormBloc>()
            .state
            .product
            .productDescription
            .value
            .fold(
                (failure) => failure.maybeMap(
                    orElse: () => null,
                    empty: (_) => 'Cannot Be Empty!',
                    exceedsLength: (f) =>
                        'Product Description Exceeds Length ${f.max}'),
                (_) => null));
  }
}

class ProductNameField extends StatelessWidget {
  const ProductNameField({
    Key key,
    @required this.product,
  }) : super(key: key);

  final FSProduct product;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue: product?.productName?.value?.getOrElse(null),
        decoration: formStyleMain.copyWith(
          labelText: "Product Name",
        ),
        maxLength: ProductName.maxLength,
        onChanged: (value) {
          context
              .read<ProductFormBloc>()
              .add(ProductFormEvent.productNameChanged(value));
        },
        validator: (_) => context
            .read<ProductFormBloc>()
            .state
            .product
            .productName
            .value
            .fold(
                (failure) => failure.maybeMap(
                    orElse: () => null,
                    empty: (_) => 'Cannot Be Empty!',
                    exceedsLength: (f) =>
                        'Product Name Exceeds Length ${f.max}'),
                (_) => null));
  }
}

// ignore: always_declare_return_types
_pickProductImage(BuildContext context) async {
  //Todo implement cloud storage for product image!
  final  imageFile = await ImagePickerUtility.pickImageFromGallery();
  final Uint8List image = imageFile.readAsBytesSync();
  context.read<ProductFormBloc>().add(
      ProductFormEvent.productImageChanged(image ?? Uint8List.fromList([])));
}

SizedBox buildProductImageSection(
    BuildContext context, ProductFormState state) {
  return SizedBox(
    height: Responsive.width(50, context),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircularIconButtonWithBorder(
            borderWidth: 2,
            size: Responsive.width(10, context),
            icon: const Icon(
              Icons.camera_alt,
            ),
            onPressedCallback: () {
              _pickProductImage(context);
            },
            iconColor: iconColorLight,
            buttonColor: Colors.white,
            borderColor: iconColorLight,
          ),
          const CircularGradientAvatar(
            //Todo implement product image selection
            // image: state.product.productImage.isNotEmpty
            //     ? MemoryImage(state.product.productImage)
            //     : null,
            image: null,
            defaultImagePath: 'lib/assets/images/no-image.png',
          ),
          CircularIconButtonWithBorder(
            borderWidth: 2,
            size: Responsive.width(10, context),
            icon: const Icon(
              Icons.cancel,
            ),
            onPressedCallback: () {
              context.read<ProductFormBloc>().add(
                  ProductFormEvent.productImageChanged(Uint8List.fromList([])));
            },
            iconColor: iconColorLight,
            buttonColor: Colors.white,
            borderColor: iconColorLight,
          ),
        ],
      ),
    ),
  );
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
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
  );
}
