import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/product_provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<ProductProvider>(context, listen: false).getProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atlas"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<ProductProvider>(
          builder: (context, productProvider, child) {
            if (productProvider.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (productProvider.products.isEmpty) {
              return Center(
                child: Text("No products available"),
              );
            }
            return ListView.builder(
                itemCount: productProvider.products.length,
                itemBuilder: (context, index) {
                  final product = productProvider.products[index];
                  return Card.filled(
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      // leading: Text("product"),
                      leading: Image.network(product.image),
                      title: Text(
                        product.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
                      onTap: () {},
                      // trailing: Text(product.rate!.rate.toString()),
                    ),
                  );
                });
          },
        ),
      ),
    );

  }
}
