import 'package:flutter/material.dart';
import 'package:sales_app/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Column(),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29)
                  )
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png")
                )
              ),
            ),
          ],
        ),
        SizedBox(height: kDefaultPadding,),
        Row(
          children: <Widget>[
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: TextButton(
                onPressed: () {},

                child: Text(
                  'Buy Now',

                ),
              )
            )
          ],
        ),
      ],
    );
  }
}
