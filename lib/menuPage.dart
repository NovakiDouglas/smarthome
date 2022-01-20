import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:smarthome/box.dart';

import 'chart.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<BottomNavigationBarItem> botItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        color: Colors.black87,
        size: 30,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.highlight_outlined,
        color: Color.fromRGBO(184, 156, 81, 1),
        size: 30,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.power,
        color: Colors.black87,
        size: 30,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.favorite,
        color: Colors.black87,
        size: 30,
      ),
      label: '',
    ),
  ];

  List<ApplianceBox> items = [
    ApplianceBox(
      title: "Light",
      boxInfo: Icons.light_mode_outlined,
    ),
    ApplianceBox(
      title: "Sound",
      boxInfo: Icons.surround_sound_outlined,
    ),
    ApplianceBox(
      title: "Fans",
      boxInfo: Icons.leak_add_sharp,
    ),
    ApplianceBox(title: "Heater", boxInfo: Icons.thermostat)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Icon(
            Icons.filter_list,
            color: Colors.black87,
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 50),
              child: Image(
                image: AssetImage('assets/user.png'),
                width: 40,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: botItems,
        elevation: 0,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
      ),
      backgroundColor: Color.fromRGBO(224, 214, 202, 1),
      body: Container(
        padding: EdgeInsets.only(left: 50, right: 50, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bedrooms",
                      style: new TextStyle(
                          fontFamily: 'SF Rounded',
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "usage today",
                      style: new TextStyle(
                          fontFamily: 'SF Rounded',
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                    width: 90,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(20)),
                      width: 30,
                      height: 40,
                      alignment: Alignment.center,
                      child: Text("64Kw",
                          style: TextStyle(color: Colors.white, fontSize: 17)),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: BarChartSample1(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: items,
              ),
            )
          ],
        ),
      ),
    );
  }
}
