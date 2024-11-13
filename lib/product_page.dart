import 'package:flutter/material.dart';
import 'package:lec7/product_entity.dart';

class ProductPage extends StatelessWidget {
  final double height;
  final Product product;
  const ProductPage({super.key, required this.height, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Page",
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.purple[800],
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          _buildImage(),
          _buildDetails(),
        ]),
      ),
    );
  }

  Widget _buildImage() {
    return Hero(
      tag: product.productNumber,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Image.asset(
          product.imgPath,
          height: height,
        ),
      ),
    );
  }

  Widget _buildDetails() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(68, 0, 0, 0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name: ${product.name}",
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Number: ${product.productNumber}",
              style: const TextStyle(color: Colors.white, fontSize: 18)),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Description:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white),
            ),
          ),
          Text(
            product.description,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
