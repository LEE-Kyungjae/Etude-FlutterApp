import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//계산기 버튼프리셋
class MainPageButton extends StatelessWidget {
  MainPageButton(
      {required this.color,
      required this.text,
      required this.navigator,
      required this.svgimage});

  final Color color;
  final Widget text;
  final Widget navigator;
  final String svgimage;

  @override
  Widget build(BuildContext context) {
    //
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: SizedBox(
        height: 80.0,
        width: 80.0,
        child: ElevatedButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              backgroundColor: MaterialStateProperty.all<Color>(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(31)))),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => navigator));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                svgimage,
                height: 50,
                width: 50,
              ),
              SizedBox(
                height: 2,
                width: 2,
              ),
              text,
            ],
          ),
        ),
      ),
    );
  }
}
