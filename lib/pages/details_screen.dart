
import 'package:e_commerce/shared/items.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/shared/colors.dart';
import 'package:e_commerce/shared/constants.dart';

import '../shared/appBar.dart';
class DetailsScreen extends StatefulWidget {
  Items product;
  DetailsScreen({required this.product});
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isShow  =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        actions: [
         BarScreens()
        ],
        title: Text("Details"),
        backgroundColor: appBarGreen,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              Image.asset(widget.product.imgPath,height: 450,width: double.infinity,),
              SizedBox(height: 22,),
              Text("\$ ${widget.product.price}",style: TextStyle(fontSize: 20),),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      "NEW",style: TextStyle(fontSize: 15),
                    ),
                    decoration: BoxDecoration(color: Color.fromARGB(255, 255, 129, 129), borderRadius: BorderRadius.circular(4)),
                  ),
                  SizedBox(width: 8,),

                  Row(
                    children: [
                    kStarsBar,
                      kStarsBar,
                      kStarsBar,
                      kStarsBar,
                      kStarsBar,

                    ],
                  ),
                  SizedBox(width: 66,),
                  Row(
                    children: [
                      Icon(Icons.edit_location,
                        size: 26,
                        color: Color.fromARGB(168, 3, 65, 27),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text("Flower Shop" , style: TextStyle(fontSize: 19),)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16,),
              SizedBox(
                width: double.infinity,
                  child: Text("Details : " ,
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.start,
                  ),

              ),
              SizedBox(height: 16,),
              Text("A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). Flowers produce gametophytes, which in flowering plants consist of a few haploid cells which produce gametes. The male gametophyte, which produces non-motile sperm, is enclosed within pollen grains; "
                  "the female gametophyte is contained within the ovule."
                  " When pollen from the anther of a flower is deposited on the stigma, "
                  "this is called pollination. Some flowers may self-pollinate, producing seed "
                  "using pollen from the same flower or a different flower of the same plant, but"
                  " others have mechanisms to prevent self-pollination and rely on cross-pollination, "
                  "when pollen is transferred from the anther of one flower to the stigma of another "
                  "flower on a different individual of the same species.",
                style: TextStyle(fontSize: 18),
                maxLines: isShow ?   3 : null,
                overflow: TextOverflow.fade,
              ),
              TextButton(onPressed: (){
                setState(() {
                  isShow = !isShow;


                });
              },
                  child: Text(isShow ? "Show More" : "Show Less"
                    , style: TextStyle(fontSize: 18),)),
            ],
          ),
        ),
      ),
    );
  }
}
