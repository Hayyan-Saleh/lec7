import 'package:flutter/material.dart';
import 'package:lec7/product_entity.dart';

class ProductWidget extends StatelessWidget {
  final double height;
  final Product product;
  const ProductWidget({super.key, required this.height, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
              colors: [Colors.transparent, Color.fromARGB(80, 0, 0, 0)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: _buildImageWithName(),
    );
  }

  Widget _buildImageWithName() {
    return Column(
      children: [
        Hero(
          tag: product.productNumber,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Center(
              child: Image.asset(
                product.imgPath,
                height: height,
              ),
            ),
          ),
        ),
        _buildName()
      ],
    );
  }

  Widget _buildName() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        product.name,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
      ),
    );
  }
}
