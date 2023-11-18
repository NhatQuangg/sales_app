import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sales_app/constants.dart';

class DetailsFirst extends StatelessWidget {
  const DetailsFirst({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
            child: SizedBox(
              height: size.height * 0.8,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                              icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: size.height * 0.75,
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
                  )
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Angelica",
                          style: TextStyle(
                              color: kTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          )
                      )
                    ]
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
