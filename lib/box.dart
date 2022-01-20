import 'package:flutter/material.dart';

class ApplianceBox extends StatefulWidget {
  String title;
  IconData boxInfo;
  double? height;
  double? width;
  ApplianceBox({
    required this.title,
    required this.boxInfo,
  });
  @override
  _ApplianceBoxState createState() => _ApplianceBoxState();
}

class _ApplianceBoxState extends State<ApplianceBox> {
  Color cor = Colors.white;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    //

    //
    return GestureDetector(
      onTap: () {
        if (cor == Colors.yellow) {
          cor = Colors.white;
        } else
          cor = Colors.yellow;
        setState(() {
          isSelected = !isSelected;
          print('Button Selected = $isSelected'); //log
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(27),
            ),
            child: Container(
              decoration: isSelected
                  ? BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          Color(0xff5fe686).withOpacity(0.26),
                          Color(0xff262d2e).withOpacity(0.23)
                        ],
                        radius: 0.72,
                        center: Alignment(0, 0),
                      ),
                      border: Border.all(
                        width: 4,
                        color: const Color(0xff5fe686),
                      ),
                      borderRadius: BorderRadius.circular(27),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 3),
                          blurRadius: 6,
                          color: const Color(0xff000000).withOpacity(0.16),
                        )
                      ],
                    )
                  : null,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Visibility(
                    child: Center(
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                widget.boxInfo,
                                color: cor,
                                size: 50,
                              ),
                              Text(
                                widget.title,
                                style: TextStyle(
                                  fontFamily: 'SF Rounded',
                                  fontSize: 21,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  //
                ],
              ),
            )),
      ),
    );
  }
}
