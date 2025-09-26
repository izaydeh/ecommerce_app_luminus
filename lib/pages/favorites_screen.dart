import 'package:ecomm_app/models/products.dart';
import 'package:ecomm_app/my%20widgets/products_card_widget.dart';
import 'package:ecomm_app/pages/details_screen.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final Future<List<Products>> futureProducts;
  final Set<String> favoritesSet;
  final void Function(Products) onToggleFavorite;

  const FavoritesScreen({
    super.key,
    required this.futureProducts,
    required this.favoritesSet,
    required this.onToggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Products>>(
      future: futureProducts,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          final products = snapshot.data!;
          final favProducts = products
              .where((p) => favoritesSet.contains(p.title))
              .toList();

          if (favProducts.isEmpty) {
            return const Center(child: Text('No favorites yet'));
          }

          return SafeArea(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: favProducts.length,
              itemBuilder: (context, index) {
                final p = favProducts[index];
                return Row(
                  children: [
                    Expanded(
                      child: ProductsCard(
                        image: p.image,
                        nameOfProduct: p.title,
                        price: '\$${p.price}',
                        isFav: favoritesSet.contains(p.title),
                        onFavToggle: () => onToggleFavorite(p),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) {
                                return DetailsScreen(
                                  image: p.image,
                                  title: p.title,
                                  price: '\$${p.price}',
                                  description: p.description,
                                  isFav: favoritesSet.contains(p.title),
                                  onToggleFavorite: () => onToggleFavorite(p),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
