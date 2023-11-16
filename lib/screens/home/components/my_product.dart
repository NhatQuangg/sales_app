
import 'package:flutter/material.dart';
import 'package:sales_app/model/product.dart';

class MyProduct extends StatelessWidget {
  MyProduct({super.key, required this.lsProduct});
  List<Product> lsProduct;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,    // chieu ngang co dinh 2 phan tu
      ),
      itemCount: lsProduct.length,    // lsPhoto.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(lsProduct[index].image),
                  fit: BoxFit.cover
              )
          ),
        );
      },
    );
  }
}
