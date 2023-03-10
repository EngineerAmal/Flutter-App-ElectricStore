import 'package:electricstore/models/products.dart';
import 'package:electricstore/screens/details_product.dart';
import 'package:flutter/material.dart';

import '../constans.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, required this.itemIndex, required this.product, required this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding , vertical: kDefaultPadding/2),
      
      height: 190,
     
      child: InkWell(
          onTap: press(),
          child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
          Container(
            height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                offset: Offset(0,15),
                blurRadius: 25,
                color: Colors.black12
              )],
            ),
          ),

          Positioned(
            top: 0.0,
            left: 0.0,
            child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 160,
            width: 200,
            child: Image.asset(product.image,fit: BoxFit.cover,),
          ),),

          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: SizedBox(
              height: 136, 
              width: size.width-200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Text(product.title ,style: Theme.of(context).textTheme.bodyText1,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Text(product.subTitle,style: Theme.of(context).textTheme.caption,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Center(child: Text('\$${product.price}',style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold ,color: Colors.purple),)),
                ),
                Expanded(
                  child: Center(
                    child: MaterialButton(
                        child: Text("????????????????"),
                        onPressed: (){
                          Navigator.push(context , MaterialPageRoute(builder: (BuildContext context) =>  DetailsScreen(
                            product: product,
                          ),),);
                        },   
                      ),
                  ),
                 ),
              ],),
            ),
          ),
        ],),
      ),
    );
  }
}