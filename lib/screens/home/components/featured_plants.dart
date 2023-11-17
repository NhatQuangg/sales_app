
import 'package:flutter/material.dart';
import 'package:sales_app/constants.dart';
import 'package:sales_app/model/product.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    super.key,
  });

  @override

  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: Product.fetData(),
      builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
        if (snapshot.hasData) {
          var data = snapshot.data!;
          return FeaturePlantCard(lsProduct: data);
        }
        else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

}

class FeaturePlantCard extends StatelessWidget {
  FeaturePlantCard({
    super.key,
    required this.lsProduct,
  });

  List<Product> lsProduct;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 2,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            margin: EdgeInsets.only(
                left: kDefaultPadding,
                top: kDefaultPadding / 2,
                bottom: kDefaultPadding / 2
            ),
            width: size.width * 0.8,
            height: 185,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(lsProduct[index].image),
                )
            ),
          ),
        );
      },
    );
  }
}
