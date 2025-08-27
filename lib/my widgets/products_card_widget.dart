import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({
    super.key,
    required this.image,
    required this.nameOfProduct,
    required this.price,
  });
  final String image;
  final String nameOfProduct;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: 140,
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F4F5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Image.asset(image, width: 100, height: 100),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              nameOfProduct,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 102, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        255,
                        253,
                        126,
                        0,
                      ).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        color: Colors.red,
                        "assets/icons/Heart Icon_2.svg",
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
