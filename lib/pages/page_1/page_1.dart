import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          const SizedBox(height: 40),
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
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                // const Divider(),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 10,
                        ),
                        decoration: const BoxDecoration(
                          border: Border(
                              right: BorderSide(color: Colors.white70),
                              top: BorderSide(color: Colors.white70)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(CupertinoIcons.wind,
                                color: Colors.white),
                            // SizedBox(width: 20),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "WIND",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7)),
                                ),
                                const Text("15.2km/j",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
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
                            const Icon(CupertinoIcons.thermometer,
                                color: Colors.white),
                            // SizedBox(width: 20),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "FEELS LIKE",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7)),
                                ),
                                const Text("25°",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 10,
                        ),
                        decoration: const BoxDecoration(
                          border: Border(
                              right: BorderSide(color: Colors.white70),
                              top: BorderSide(color: Colors.white70)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(CupertinoIcons.sun_min,
                                color: Colors.white),
                            // SizedBox(width: 20),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "INDEX UV",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7)),
                                ),
                                const Text("2",
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
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

                const Row()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
