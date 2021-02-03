import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepPage extends StatelessWidget {
  final IconData icon;
  final String description;

  StepPage({this.icon, this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 96),
                    Icon(icon, size: 128),
                    SizedBox(height: 24),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                      softWrap: true,
                    ),
                    Spacer(),
                    Row()
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
