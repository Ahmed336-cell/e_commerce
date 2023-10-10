import 'package:e_commerce/shared/items.dart';
import 'package:flutter/material.dart';

class Cart with   ChangeNotifier{
List selectedProducts = [];
double price = 0 ;
add(Items prodcut){
  selectedProducts.add(prodcut);
  price += prodcut.price;
  notifyListeners();

}
delete(Items product){
  selectedProducts.remove(product);
  price -= product.price;
  notifyListeners();
}

get itemsCount{
  return selectedProducts.length;
}
}