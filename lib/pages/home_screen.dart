// ignore_for_file: deprecated_member_use

import 'package:ecomm_app/my%20widgets/category_card_widget.dart';
import 'package:ecomm_app/my%20widgets/menu_item_widegt.dart';
import 'package:ecomm_app/my%20widgets/products_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

class _Product {
  final String nameOfProduct;
  final String price;
  final String image;

  _Product(this.nameOfProduct, this.price, this.image);
}

class _HomeScreenState extends State<HomeScreen> {
  final List<_Cat> _categories = [
    _Cat("Smartphone", 18, "assets/images/Image Banner 2.png"),
    _Cat("Fashion", 24, "assets/images/Image Banner 3.png"),
  ];

  final List<_Product> _products = [
    _Product(
      "Wireless Controller for PS4™",
      "\$64.99",
      "assets/images/Image Popular Product 1.png",
    ),
    _Product(
      "Nike Sport White - Man Pant",
      "\$50.5",
      "assets/images/Image Popular Product 2.png",
    ),
    _Product(
      "Bicycle Helmet - Colorfull Helmet",
      "\$36.15",
      "assets/images/Image Popular Product 3.png",
    ),
  ];

  final TextEditingController _textValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 270,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFF5F4F5),
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
              backgroundColor: Color(0xFFF5F4F5),
              padding: EdgeInsets.all(14),
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Bell.svg"),
            style: IconButton.styleFrom(
              backgroundColor: Color(0xFFF5F4F5),
              padding: EdgeInsets.all(14),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                width: 370,
                height: 90,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 69, 30, 137),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 17),
                      child: Text(
                        "A Summer Surpise",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
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
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MenuItem(
                    icon: "assets/icons/Flash Icon.svg",
                    text: "Flash\nDeal",
                  ),
                  MenuItem(icon: "assets/icons/Bill Icon.svg", text: "Bill"),
                  MenuItem(icon: "assets/icons/Game Icon.svg", text: "Game"),
                  MenuItem(
                    icon: "assets/icons/Gift Icon.svg",
                    text: "Daily\nGift",
                  ),
                  MenuItem(icon: "assets/icons/Discover.svg", text: "More"),
                ],
              ),
              SizedBox(height: 14),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special for you",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See More",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 174, 174, 174),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14),

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

              SizedBox(height: 14),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Products",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See More",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 174, 174, 174),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 230,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => const SizedBox(width: 15),
                  itemCount: _products.length,
                  itemBuilder: (_, i) => ProductsCard(
                    image: _products[i].image,
                    nameOfProduct: _products[i].nameOfProduct,
                    price: _products[i].price,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Shop Icon.svg"),
            label: '', // required
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/User Icon.svg"),
            label: '',
          ),
        ],
      ),
    );
  }
}
