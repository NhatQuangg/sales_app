import 'package:flutter/material.dart';
import 'package:sales_app/constants.dart';
import 'package:sales_app/screens/product_details/components/details_description.dart';
import 'package:sales_app/screens/product_details/components/details_first.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            DetailsFirst(),
            DetailsDescription(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.white,
          child: TabBar(
            labelColor: Colors.white,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),
            unselectedLabelColor: kTextColor,
            indicator: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                topRight: _currentIndex == 0
                    ? Radius.circular(50) : Radius.zero,
                topLeft: _currentIndex == 1
                    ? Radius.circular(50) : Radius.zero,
              )
            ),
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            tabs: [
              Tab(
                text: 'Buy Now',
              ),
              Tab(
                text: 'Description',
              )
            ],
          ),
        ),
      ),
    );
  }
}
