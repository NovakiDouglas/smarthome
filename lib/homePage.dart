import 'package:flutter/material.dart';
import 'package:smarthome/menuPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40, right: 40),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MenuPage()),
            );
          },
          backgroundColor: Color.fromRGBO(194, 174, 135, 1),
          child: Icon(
            Icons.chevron_right,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(224, 214, 202, 1),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/teste2.png'),
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 60),
              child: new Text(
                "The Perfect",
                style: new TextStyle(
                    fontFamily: 'SF Rounded',
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: new Text(
                "Dream House              ",
                style: new TextStyle(
                    fontFamily: 'SF Rounded',
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: new Text(
                "for you",
                style: new TextStyle(
                    fontFamily: 'SF Rounded',
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: new Text(
                "A smart house with advanced features that",
                style: new TextStyle(
                  fontFamily: 'SF Rounded',
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: new Text(
                "You can control by mobile app",
                style: new TextStyle(
                  fontFamily: 'SF Rounded',
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
