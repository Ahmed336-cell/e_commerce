import 'package:e_commerce/pages/checkout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart';


class BarScreens extends StatelessWidget {
  const BarScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context); // Changed 'cartt' to 'cart'
    return Row(
      children: [
        Stack(
          children: [
            Container(
              child: Text(
                "${cart.itemsCount}",
                style: TextStyle(
                  color: Color.fromARGB(225, 0, 0, 0),
                ),
              ),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color.fromARGB(211, 164, 255, 193),
                shape: BoxShape.circle,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>
                    CheckOutScreen(),
                ));

              },
              icon: Icon(Icons.add_shopping_cart),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Text(
            "\$ ${cart.price}", // Used 'cart.price' instead of 'cartt.price'
            style: TextStyle(fontSize: 18),
          ),
        ),
      ]

    );}
}
