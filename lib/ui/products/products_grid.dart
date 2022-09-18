import 'package:flutter/material.dart';

import 'product_grid_tile.dart';
import 'products_manager.dart';

class ProductsGrid extends StatelessWidget{
  final bool showFavorites;

  const ProductsGrid(this.showFavorites, {super.key});

  @override 
  Widget build(BuildContext context){
    final productManger = ProductsManager();
    final products = showFavorites ? productManger.favoriteItems: productManger.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i)=> UserProductListTile(products[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),
    );
  }
}