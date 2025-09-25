import 'package:ecomm_app/models/products.dart';
import 'package:ecomm_app/my widgets/category_card_widget.dart';
import 'package:ecomm_app/my widgets/menu_item_widegt.dart';
import 'package:ecomm_app/my widgets/products_card_widget.dart';
import 'package:ecomm_app/pages/details_screen.dart';
import 'package:ecomm_app/pages/profile_screen.dart';
import 'package:ecomm_app/service/product_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _Cat {
  final String title;
  final int brands;
  final String image;
  _Cat(this.title, this.brands, this.image);
}

class _HomeScreenState extends State<HomeScreen> {
  int _tabIndex = 0;

  final List<_Cat> _categories = [
    _Cat("Smartphone", 18, "assets/images/Image Banner 2.png"),
    _Cat("Fashion", 24, "assets/images/Image Banner 3.png"),
  ];

  final TextEditingController _textValue = TextEditingController();

  // Fetch once, re-use
  final Future<List<Products>> _futureProducts = ProductService()
      .fetchProducts();

  // Favorites stored as Set of product unique keys (here: title)
  final Set<String> _favorites = <String>{};

  static const String _prefsKey = 'favorite_products';

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getStringList(_prefsKey) ?? <String>[];
    setState(() {
      _favorites.clear();
      _favorites.addAll(saved);
    });
  }

  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_prefsKey, _favorites.toList());
  }

  void _toggleFavorite(Products product) {
    final key = product.title;
    setState(() {
      if (_favorites.contains(key)) {
        _favorites.remove(key);
      } else {
        _favorites.add(key);
      }
    });
    _saveFavorites();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _tabIndex == 0
          ? AppBar(
              automaticallyImplyLeading: false,
              title: Container(
                width: 270,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFF5F4F5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _textValue,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset("assets/icons/Search Icon.svg"),
                      ),
                      hintText: "Search Product",
                    ),
                  ),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/Cart Icon.svg"),
                  style: IconButton.styleFrom(
                    backgroundColor: const Color(0xFFF5F4F5),
                    padding: const EdgeInsets.all(14),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/Bell.svg"),
                  style: IconButton.styleFrom(
                    backgroundColor: const Color(0xFFF5F4F5),
                    padding: const EdgeInsets.all(14),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            )
          : null,
      body: IndexedStack(
        index: _tabIndex,
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    width: 370,
                    height: 90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 69, 30, 137),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 17),
                          child: Text(
                            "A Summer Surpise",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Cashback 20%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      MenuItem(
                        icon: "assets/icons/Flash Icon.svg",
                        text: "Flash\nDeal",
                      ),
                      MenuItem(
                        icon: "assets/icons/Bill Icon.svg",
                        text: "Bill",
                      ),
                      MenuItem(
                        icon: "assets/icons/Game Icon.svg",
                        text: "Game",
                      ),
                      MenuItem(
                        icon: "assets/icons/Gift Icon.svg",
                        text: "Daily\nGift",
                      ),
                      MenuItem(icon: "assets/icons/Discover.svg", text: "More"),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Special for you",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See More",
                            style: TextStyle(
                              color: Color.fromARGB(255, 174, 174, 174),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  SizedBox(
                    height: 110,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      scrollDirection: Axis.horizontal,
                      itemCount: _categories.length,
                      separatorBuilder: (_, __) => const SizedBox(width: 20),
                      itemBuilder: (_, i) => CategoryCard(
                        title: _categories[i].title,
                        subtitle: "${_categories[i].brands} Brands",
                        image: _categories[i].image,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Popular Products",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See More",
                            style: TextStyle(
                              color: Color.fromARGB(255, 174, 174, 174),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 230,
                    child: FutureBuilder<List<Products>>(
                      future: _futureProducts,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        } else if (snapshot.hasError) {
                          return Center(
                            child: Text('Error: ${snapshot.error}'),
                          );
                        } else if (snapshot.hasData) {
                          final products = snapshot.data!;
                          return ListView.separated(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            separatorBuilder: (_, __) =>
                                const SizedBox(width: 15),
                            itemCount: 4,
                            itemBuilder: (_, i) => ProductsCard(
                              image: products[i].image,
                              nameOfProduct: products[i].title,
                              price: '\$${products[i].price}',
                              isFav: _favorites.contains(products[i].title),
                              onFavToggle: () => _toggleFavorite(products[i]),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return DetailsScreen(
                                        image: products[i].image,
                                        title: products[i].title,
                                        price: '\$${products[i].price}',
                                        description: products[i].description,
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          FavoritesScreen(
            futureProducts: _futureProducts,
            favoritesSet: _favorites,
            onToggleFavorite: _toggleFavorite,
          ),

          const Center(child: Text('Chat')),
          const ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabIndex,
        onTap: (i) => setState(() => _tabIndex = i),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Shop Icon.svg",
              color: Colors.grey,
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/Shop Icon.svg",
              colorFilter: const ColorFilter.mode(
                Colors.deepOrange,
                BlendMode.srcIn,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/Heart Icon.svg",
              colorFilter: const ColorFilter.mode(
                Colors.deepOrange,
                BlendMode.srcIn,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/Chat bubble Icon.svg",
              colorFilter: const ColorFilter.mode(
                Colors.deepOrange,
                BlendMode.srcIn,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/User Icon.svg"),
            activeIcon: SvgPicture.asset(
              "assets/icons/User Icon.svg",
              colorFilter: const ColorFilter.mode(
                Colors.deepOrange,
                BlendMode.srcIn,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

/// FavoritesScreen shows only the products that are currently in favorites set.
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
