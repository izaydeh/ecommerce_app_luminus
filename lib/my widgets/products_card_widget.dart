import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductsCard extends StatefulWidget {
  const ProductsCard({
    super.key,
    required this.image,
    required this.nameOfProduct,
    required this.price,
    this.onPressed,
  });
  final String image;
  final String nameOfProduct;
  final String price;
  final VoidCallback? onPressed;

  @override
  State<ProductsCard> createState() => _ProductsCardState();
}

class _ProductsCardState extends State<ProductsCard> {
  bool isFav = false;
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
              onTap: widget.onPressed,
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F4F5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: SizedBox(
                    height: 80,
                    width: 70,
                    child: Image.network(widget.image),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              widget.nameOfProduct,
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.price,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 102, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                InkWell(
                  onTap: () {
                    setState(() {
                      isFav = !isFav;
                    });
                  },
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
                              165,
                              165,
                              164,
                            ).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        color: isFav ? Colors.red : Colors.grey,
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
