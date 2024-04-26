import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_3/pages/page_1/widgets/daily_info_small.dart';
import 'package:flutter_day_3/pages/page_1/widgets/extra_details.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.ellipsis),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    "Bandung, ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "Indonesia, ",
                    style: TextStyle(fontSize: 22, color: Colors.black45),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Image.asset(
                    "assets/images/cloudy_sunny.png",
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Cloudy Sunny",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Sunday, 02 Oct",
                    style: TextStyle(
                        fontSize: 16, color: Colors.white.withOpacity(0.7)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "24°",
                    style: TextStyle(
                        fontSize: 80,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 30),
                  // const Divider(),
                  const Row(
                    children: [
                      ExtraDetails(
                        icon: CupertinoIcons.wind,
                        label: "WIND",
                        labelSmall: "12.5km/j",
                      ),
                      ExtraDetails(
                        icon: CupertinoIcons.thermometer,
                        label: "FEELS LIKE",
                        labelSmall: "25°",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const ExtraDetails(
                        icon: CupertinoIcons.sun_min,
                        label: "INDEX UV",
                        labelSmall: "2",
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 12),
                          decoration: const BoxDecoration(
                            border:
                                Border(top: BorderSide(color: Colors.white70)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/images/pulse.png",
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PRESSURE",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.7)),
                                  ),
                                  const Text(
                                    "1014 mbar",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const Text(
                    "Today",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  const Expanded(child: SizedBox.shrink()),
                  Text(
                    "Next 7 Days ",
                    style: TextStyle(color: Colors.deepPurple.withOpacity(0.7)),
                  ),
                  Icon(Icons.arrow_forward_ios,
                      size: 16, color: Colors.deepPurple.withOpacity(0.7))
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 8),
                      child: Column(
                        children: [
                          const Text(
                            "12:00",
                            style: TextStyle(color: Colors.white),
                          ),
                          SvgPicture.asset(
                            "assets/icons/cloudy.svg",
                            color: Colors.white,
                          ),
                          const Text(
                            "Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const DailyInfoSmall(
                        hour: "14:00", temp: 22, icon: "rainy"),
                    const DailyInfoSmall(
                        hour: "16:00", temp: 26, icon: "cloudy_sunny"),
                    const DailyInfoSmall(
                        hour: "18:00", temp: 25, icon: "cloudy_sunny"),
                    const DailyInfoSmall(
                        hour: "20:00", temp: 30, icon: "sunny"),
                    const DailyInfoSmall(
                        hour: "22:00", temp: 26, icon: "cloudy"),
                    const DailyInfoSmall(
                        hour: "23:50", temp: 22, icon: "cloudy"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
