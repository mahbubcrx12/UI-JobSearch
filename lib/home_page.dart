import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:day24/widgets/bottom_list_view.dart';
import 'package:day24/widgets/home_app_bar.dart';
import 'package:day24/widgets/job_list.dart';
import 'package:day24/widgets/search_box.dart';
import 'package:day24/widgets/tag_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: CurvedNavigationBar(
          height: 45,
          buttonBackgroundColor: Colors.grey,
          backgroundColor: Colors.white,
          items: <Widget>[
            Icon(Icons.home_filled, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.add, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.person, size: 30),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),

      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.2)
                  ),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                HomeAppBAr(),
                SearchBox(),
                TagList(),
                JobList(),
                //BottomListViewPart(),
              ],
            ),
          )
        ],
      )
      
    );
  }
}
