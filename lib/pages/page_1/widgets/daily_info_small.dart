import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DailyInfoSmall extends StatelessWidget {
  const DailyInfoSmall(
      {super.key, required this.hour, required this.temp, required this.icon});

  final String hour;
  final int temp;

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: const Color(0xfff9f9f9),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.deepPurpleAccent)),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      child: Column(
        children: [
          Text(
            hour,
            style: const TextStyle(color: Colors.indigo,fontWeight: FontWeight.w500),
          ),
          Image.asset(
            "assets/images/$icon.png",
            height: 58,
          ),
          const SizedBox(height: 5),
          Text(
            "$temp°",
            style: const TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
