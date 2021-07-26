import 'package:cubanacan/widgets/hotel/hotel_grid.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class InnerTab extends StatelessWidget {
  const InnerTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: DotIndicator(
              color: Colors.red.shade600,
              distanceFromCenter: 13,
              radius: 3,
              paintingStyle: PaintingStyle.fill,
            ),
            unselectedLabelColor: Colors.grey.shade500,
            labelColor: Colors.red.shade600,
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            tabs: [
              Container(
                height: 30,
                child: Tab(text: "Hoteles"),
              ),
              Container(
                height: 30,
                child: Tab(text: "Circuitos"),
              ),
              Container(
                height: 30,
                child: Tab(text: "Excursiones"),
              ),
              Container(
                height: 30,
                child: Tab(text: "Eventos"),
              ),
              Container(
                height: 30,
                child: Tab(text: "Flexi Fly & Drive"),
              ),
            ],
          ),
          Flexible(
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              child: TabBarView(
                children: [
                  HotelGrid(),
                  Center(
                    child: Text("Circuitos"),
                  ),
                  Center(
                    child: Text("Excursiones"),
                  ),
                  Center(
                    child: Text("Eventos"),
                  ),
                  Center(
                    child: Text("Flexi Fly & Drive"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
