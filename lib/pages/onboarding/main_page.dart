import 'package:flutter/material.dart';
import 'package:flutter_day_3/pages/onboarding/widgets/navigate_to_button.dart';
import 'package:flutter_day_3/pages/page_1/page_1.dart';

import '../page_2/page_2.dart';
import '../page_3/page_3.dart';
import '../page_4/page_4.dart';
import '../page_5/page_5.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UI tasks"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          NavigateToButton(pageName: "1. Weather-1", page: Page1()),
          NavigateToButton(pageName: "2. Weather-2", page: Page2()),
          NavigateToButton(pageName: "3. Resume", page: Page3()),
          NavigateToButton(pageName: "4. Education App-1", page: Page4()),
          NavigateToButton(pageName: "5. Education App-2", page: Page5()),
        ],
      ),
    );
  }
}
