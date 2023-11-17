import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sales_app/constants.dart';
import 'package:sales_app/model/product.dart';
import 'package:sales_app/screens/details/components/body.dart';
import 'package:sales_app/screens/details/details_screen.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: Product.fetData(),
      builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
        if (snapshot.hasData) {
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

class RecomendPlantCard extends StatelessWidget {
  RecomendPlantCard({
    super.key,
    required this.lsProduct,
  });

  List<Product> lsProduct;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding * 2.5
          ),
          width: size.width * 0.3,
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.network(
                  lsProduct[index].image,
                  fit: BoxFit.cover,
                  width: size.width * 0.3,
                  height: 190,
                ),
              ),
              GestureDetector(
                onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen()),
                    );
                },
                child: Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.23)
                        )
                      ]
                  ),
                  child: Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: lsProduct[index].title.toUpperCase(),
                                  style: TextStyle(
                                      color: kTextColor,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                              // TextSpan(
                              //     text: "$country".toUpperCase(),
                              //     style: TextStyle(
                              //         color: kPrimaryColor.withOpacity(0.5)
                              //     )
                              // )
                            ]
                        ),
                      ),
                      Spacer(),
                      Text(
                        '${(lsProduct[index].price).toString()} ₫',
                        style: TextStyle(
                            color: kPrimaryColor
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}


