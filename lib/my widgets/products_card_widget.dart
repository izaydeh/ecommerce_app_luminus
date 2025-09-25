import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({
    super.key,
    required this.image,
    required this.nameOfProduct,
    required this.price,
    this.onPressed,
    this.isFav = false,
    this.onFavToggle,
  });

  final String image;
  final String nameOfProduct;
  final String price;
  final VoidCallback? onPressed;

  // new:
  final bool isFav;
  final VoidCallback? onFavToggle;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: onPressed,
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F4F5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: SizedBox(
                    height: 80,
                    width: 70,
                    child: Image.network(image),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              nameOfProduct,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 102, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: onFavToggle,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: isFav
                          ? const Color.fromARGB(
                              255,
                              253,
                              126,
                              0,
                            ).withOpacity(0.1)
                          : const Color.fromARGB(
                              255,
                              189,
                              189,
                              188,
                            ).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: isFav
                            ? Colors.red
                            : const Color.fromARGB(255, 224, 222, 222),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
