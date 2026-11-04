import 'package:flutter/material.dart';

class GridBasic extends StatelessWidget {
  const GridBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.6,
      ),
      children: <Widget>[
        Container(
          color: Colors.amber,
          child: FlutterLogo(
            size: 64,
            style: FlutterLogoStyle.markOnly,
            textColor: Colors.green,
          ),
        ),
        Container(
          color: Colors.amber,
          child: FlutterLogo(
            size: 64,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.green,
          ),
        ),
        Container(
          color: Colors.amber,
          child: FlutterLogo(
            size: 64,
            style: FlutterLogoStyle.horizontal,
            textColor: Colors.green,
          ),
        ),
        Container(
          color: Colors.amber,
          child: FlutterLogo(
            size: 64,
            style: FlutterLogoStyle.markOnly,
            textColor: Colors.green,
          ),
        ),
      ],
    );
  }
}