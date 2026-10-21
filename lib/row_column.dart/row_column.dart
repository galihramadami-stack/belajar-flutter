import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Text("ini text 1"),
             Text("ini text 2"),
             Text("ini text 3"),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(size: 50, style: FlutterLogoStyle.horizontal,),
                  FlutterLogo(size: 50, style: FlutterLogoStyle.stacked,),
                  FlutterLogo(size: 50, style: FlutterLogoStyle.markOnly,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}