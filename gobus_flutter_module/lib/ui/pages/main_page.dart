import 'package:flutter/material.dart';

import 'information_page.dart';

class MainPage extends StatelessWidget {
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
                    Icon(Icons.directions_bus, size: 128),
                    Text(
                      'Gobus App',
                      style: TextStyle(fontSize: 28),
                    ),
                    SizedBox(height: 24),
                    Text(
                      '¿Sabes donde viene tu bus?',
                      style: TextStyle(fontSize: 22),
                    ),
                    Spacer(),
                    RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => InformationPage()));
                        },
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.blue[500]),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            '¡A VIAJAR!',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
