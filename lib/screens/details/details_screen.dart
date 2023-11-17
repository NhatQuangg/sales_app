import 'package:flutter/material.dart';
import 'package:sales_app/constants.dart';
import 'package:sales_app/screens/details/components/body.dart';
import 'package:sales_app/screens/details/components/details_description.dart';
import 'package:sales_app/screens/details/components/details_first.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: TabBarView(
            children: [
              // Body(),
              DetailsFirst(),
              DetailsDescription()
            ],
          ),
          bottomNavigationBar: Container(
            color: Color(0xFF3F5AA6),
            child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.blue,
              tabs: [
                Tab(icon: Icon(Icons.add)),
                Tab(icon: Icon(Icons.add_box_outlined))
              ],
            ),
          ),
        ),
    );
  }
}
