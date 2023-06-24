import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/text.dart';
import 'package:flutter/material.dart';

class CartBadge extends StatelessWidget {
  final IconData icon;
  final int cartSize;
  const CartBadge({Key? key, this.icon = Icons.shopping_cart, this.cartSize = 2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, 'cart');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:5),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              backgroundColor: white,
              child: Icon(
                icon,
                color: grey,
              ),
            ),
            Positioned(
              right: 0,
              top: 5,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: orange,
                child: TextWidget(
                  text: '$cartSize',
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
