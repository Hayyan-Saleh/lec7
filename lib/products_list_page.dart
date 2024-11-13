import 'package:flutter/material.dart';
import 'package:lec7/constants.dart';
import 'package:lec7/product_page.dart';
import 'package:lec7/product_widget.dart';

class ProductsListPage extends StatelessWidget {
  const ProductsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return ListView.builder(
      itemCount: PRODUCTS.length,
      itemBuilder: (context, index) {
        final currentProduct = PRODUCTS[index];
        return GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => ProductPage(
                    product: currentProduct,
                    height: 0.5 * deviceHeight,
                  ))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProductWidget(
                height: 0.3 * deviceHeight, product: currentProduct),
          ),
        );
      },
    );
  }
}
