import 'package:electricstore/widget/details/colordot.dart';
import 'package:electricstore/widget/details/product_image.dart';
import 'package:flutter/material.dart';
import '../../constans.dart';
import '../../models/products.dart';

class DetailsBody extends StatelessWidget {

  final Product product;
 
  DetailsBody(this.product);

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       Container(
         width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding + 1.5),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Center(
              child: ProductImage(size: size ,
                image: product.image,
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ColorDot(
                  fillColor: kTextLightColor,
                  isSelected: true,
                ),
                 ColorDot(
                  fillColor: Colors.blue,
                  isSelected: false,
                ),
                 ColorDot(
                  fillColor: Colors.red,
                  isSelected: false,
                ),
              ],),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding /2),
              child: Text(product.title , style: Theme.of(context).textTheme.headline6,),
            ),

            Text('${product.price}',style: TextStyle(fontSize: 28 , fontWeight: FontWeight.bold , color: kSecondaryColor),),
            
            SizedBox(height: kDefaultPadding,),
            ],),),

             Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding /2),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding+1.5 , vertical: kDefaultPadding /2),
              child: Text(product.description,style: TextStyle(color: Colors.white, fontSize: 20),)
            ),
      ],),
    );
  }
}
