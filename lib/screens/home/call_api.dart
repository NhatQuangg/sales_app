
import 'package:flutter/material.dart';
import 'package:sales_app/model/product.dart';
import 'package:sales_app/screens/home/components/recomend_plants.dart';

class CallAPI extends StatelessWidget {
  const CallAPI({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: Product.fetData(),
      builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
        if (snapshot.hasData) {
          print("Co data");
          var data = snapshot.data!;
          return RecomendPlantCard(lsProduct: data);
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
