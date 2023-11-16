//
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:sales_app/constants.dart';
// import 'package:sales_app/model/product.dart';
// import 'package:sales_app/screens/details/components/body.dart';
// import 'package:sales_app/screens/details/details_screen.dart';
//
// class RecomendsPlants extends StatelessWidget {
//   const RecomendsPlants({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: <Widget>[
//           // RecomendPlantCard(
//           //   image: "assets/images/image_1.png",
//           //   title: "Samantha",
//           //   country: "Russia",
//           //   price: 440,
//           //   press: () {
//           //     Navigator.push(
//           //       context,
//           //       MaterialPageRoute(
//           //         builder: (context) => DetailsScreen(),
//           //       )
//           //     );
//           //   },
//           // ),
//           // RecomendPlantCard(
//           //   image: "assets/images/image_2.png",
//           //   title: "Samantha",
//           //   country: "Russia",
//           //   price: 440,
//           //   press: () {
//           //     Navigator.push(
//           //         context,
//           //         MaterialPageRoute(
//           //           builder: (context) => DetailsScreen(),
//           //         )
//           //     );
//           //   },
//           // ),
//           // RecomendPlantCard(
//           //   image: "assets/images/image_3.png",
//           //   title: "Samantha",
//           //   country: "Russia",
//           //   price: 440,
//           //   press: () {
//           //     Navigator.push(
//           //         context,
//           //         MaterialPageRoute(
//           //           builder: (context) => DetailsScreen(),
//           //         )
//           //     );
//           //   },
//           // ),
//         ],
//       ),
//     );
//   }
// }
//
// class RecomendPlantCard extends StatelessWidget {
//   RecomendPlantCard({
//     super.key,
//     required this.lsProduct,
//   });
//
//   List<Product> lsProduct;
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//         margin: EdgeInsets.only(
//             left: kDefaultPadding,
//             top: kDefaultPadding / 2,
//             bottom: kDefaultPadding * 2.5
//         ),
//         width: size.width * 0.4,
//         child: Column(
//           children: <Widget>[
//             Image.asset(image),
//             GestureDetector(
//               // onTap: press,
//               child: Container(
//                 padding: EdgeInsets.all(kDefaultPadding / 2),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(10),
//                         bottomRight: Radius.circular(10)
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                           offset: Offset(0, 10),
//                           blurRadius: 50,
//                           color: kPrimaryColor.withOpacity(0.23)
//                       )
//                     ]
//                 ),
//                 child: Row(
//                   children: <Widget>[
//                     RichText(
//                       text: TextSpan(
//                           children: [
//                             TextSpan(
//                                 text: "$title\n".toUpperCase(),
//                                 style: TextStyle(
//                                     color: kTextColor
//                                 )
//                             ),
//                             TextSpan(
//                                 text: "$country".toUpperCase(),
//                                 style: TextStyle(
//                                     color: kPrimaryColor.withOpacity(0.5)
//                                 )
//                             )
//                           ]
//                       ),
//                     ),
//                     Spacer(),
//                     Text(
//                       '\$$price',
//                       style: TextStyle(
//                           color: kPrimaryColor
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       );
//     );
//   }
// }
//
//
