import 'package:electricstore/widget/home_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constans.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,

      appBar: buildAppBar(),

      body: HomeBody(),

    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text("مرحباً بكم في متجر الالكترونيات" , style: GoogleFonts.getFont('Almarai'),),
      centerTitle: false,
      actions: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            
          },
        )
      ],
    );
  }
}