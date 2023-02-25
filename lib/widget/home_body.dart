import 'package:electricstore/models/products.dart';
import 'package:electricstore/screens/details_product.dart';
import 'package:electricstore/widget/product_card.dart';
import 'package:flutter/material.dart';
import '../constans.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(children: [
        SizedBox(height: kDefaultPadding/ 2),
        Expanded(
          child: Stack(children: [
            Container(
              margin: EdgeInsets.only(top: 70),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40) , topRight: Radius.circular(40))
              ),
            ),

            // Start Card of Products
            ListView.builder(
              itemCount: products.length,
              itemBuilder: (context , index) => ProductCard(
                itemIndex: index,
                product: products[index],
                press: (){
                  // Navigator.push(context , MaterialPageRoute(builder: (BuildContext context) =>  DetailsScreen(),),);
                },
              ),
            ),   
          ]),
        )
      ],),
    );
  }
  
}
