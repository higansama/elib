import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.cyan,
                child: Container(
                  child: Row(
                    children: <Widget>[

                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.deepOrange,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.amberAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
