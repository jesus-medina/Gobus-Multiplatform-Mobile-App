import 'package:flutter/material.dart';
import 'package:gobus_flutter_module/ui/pages/information/step_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class _Step {
  IconData icon;
  String description;

  _Step({this.icon, this.description});
}

class InformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    final steps = [
      _Step(
          icon: Icons.location_on,
          description:
              'Con Gobus App puedes conocer la ubicación de tu transporte en tiempo real'),
      _Step(
          icon: Icons.bus_alert,
          description:
              'Comparte tu ubicación mientras viajas. Así, otros viajeros podrán saber si el bus está cerca. Tranquilo, nadie sabrá que tu vienes en el bus.'),
      _Step(
          icon: Icons.assistant_direction,
          description:
              'Comparte tu ubicación mientras viajas. Así, otros viajeros podrán saber si el bus está cerca. Tranquilo, nadie sabrá que tu vienes en el bus.'),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: PageView(
            controller: pageController,
            children: steps
                .map((step) => StepPage(
                      icon: step.icon,
                      description: step.description,
                    ))
                .toList(),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: 128,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: WormEffect(),
                onDotClicked: (page) {
                  pageController.animateToPage(page,
                      duration: Duration(milliseconds: 256),
                      curve: Curves.easeInOut);
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
