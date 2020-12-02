import 'package:dept_project/auth/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:sk_onboarding_screen/flutter_onboarding.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

import 'dashboard.dart';

class Onboarding extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OnboardingState();
  }
}

class OnboardingState extends State<Onboarding> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _globalKey,
      body: SKOnboardingScreen(
        bgColor: Colors.white,
        themeColor: const Color(0xff730C99),
        pages: pages,
        skipClicked: (value) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        getStartedClicked: (value) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
      ),
    );
  }

  final pages = [
    SkOnboardingModel(
        title: 'Remote care taking',
        description:
            'Easily track the activities of elders and patients through the app',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/onboarding1.png'),
    SkOnboardingModel(
        title: 'Alerts and notifications',
        description:
            'Get alerted under an emergency and get instant updates through push notificatios',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/onboarding2.png'),
    SkOnboardingModel(
        title: 'Personalized statistics',
        description: 'Analyze the activities of patients and visualize the data in various charts.',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/onboarding3.png'),
  ];
}
