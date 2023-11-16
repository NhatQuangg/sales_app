import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sales_app/constants.dart';
import 'package:sales_app/screens/home/components/featured_plants.dart';
import 'package:sales_app/screens/home/components/header_with_searchbox.dart';
import 'package:sales_app/screens/home/components/recomend_plants.dart';
import 'package:sales_app/screens/home/components/recomend_plantss_2.dart';
import 'package:sales_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  @override
  Widget build(BuildContext context) {
    // total height and width of screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          // Container(
          //   color: Colors.yellow,
          //   height: 290,
          //   child: RecomendsPlantss(),
          // ),
          RecomendsPlantss(),
          // TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          // FeaturedPlants(),
          // SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}
