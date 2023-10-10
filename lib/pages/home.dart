import 'package:e_commerce/pages/details_screen.dart';
import 'package:e_commerce/shared/appBar.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/shared/colors.dart';
import 'package:e_commerce/shared/items.dart';
import 'package:provider/provider.dart';

import 'package:e_commerce/provider/cart.dart';

import 'checkout.dart';

class Home extends StatelessWidget {
  final List<Items> items = [
    Items(imgPath: "assets/plant1.jpg", price: 12),
    Items(imgPath: "assets/plant2.jpg", price: 20),
    Items(imgPath: "assets/plant3.jpg", price: 10),
    Items(imgPath: "assets/plant4.jpg", price: 30),
    Items(imgPath: "assets/plant5.jpg", price: 7),
    Items(imgPath: "assets/plant6.jpg", price: 50),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              mainAxisSpacing: 33,
              crossAxisSpacing: 10,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(product: items[index]),
                    ),
                  );
                },
                child: GridTile(
                  child: Stack(
                    children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(55),
                          child: Image.asset(items[index].imgPath),
                        ),
                      ),
                    ],
                  ),
                  footer: GridTileBar(
                    backgroundColor: Color.fromARGB(66, 73, 127, 110),
                    trailing: Consumer<Cart>(
                      builder: (context, cart, child) {
                        return IconButton(
                          color: Color.fromARGB(255, 62, 94, 70),
                          onPressed: () {
                            cart.add(items[index]);
                          },
                          icon: Icon(Icons.add),
                        );
                      },
                    ),
                    leading: Text("\$ ${items[index].price}"),
                    title: Text(""),
                  ),
                ),
              );
            },
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: appBarGreen,
                ),
                accountName: Text(
                  "Ahmed Maher",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                accountEmail: Text("ahmaher04@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/cat.jpg"),
                ),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>
                        Home(),
                  ));
                },
              ),
              ListTile(
                title: Text("My Products"),
                leading: Icon(Icons.add_shopping_cart),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>
                        CheckOutScreen(),
                  ));
                },
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.help_center),
                onTap: () {},
              ),
              ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.exit_to_app),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            BarScreens()
          ],
          title: Text("Home"),
          backgroundColor: appBarGreen,
        ),
      ),
    );
  }
}
