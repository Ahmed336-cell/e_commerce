import 'package:e_commerce/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../shared/appBar.dart';
import '../shared/colors.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context); // Changed 'cartt' to 'cart'
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: appBarGreen,
        actions: [BarScreens()],
        title: Text(
          "Checkout",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body:  Column(
        children: [
          SingleChildScrollView(
          child: SizedBox(
              height: 550,
              child: ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: cart.selectedProducts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text("${cart.selectedProducts[index].price}"),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(cart.selectedProducts[index].imgPath),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          cart.delete(cart.selectedProducts[index]);
                        },
                        icon: Icon(Icons.remove),
                      ),
                    ),
                  );
                },
              )),
        ),
          ElevatedButton(onPressed: (){},
              child: Text("Pay \$ ${cart.price}" , style: TextStyle(fontSize: 19),),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNpink),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius:  BorderRadius.circular(8)))
            ),
          )
      ]
      ),
    ));
  }
}
