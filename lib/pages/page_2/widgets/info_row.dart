
import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  const InfoRow(
      {super.key,
        required this.icon,
        required this.day,
        required this.temp1,
        required this.month,
        required this.temp2});

  final String icon;
  final String day;
  final String month;
  final int temp1;
  final int temp2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/$icon.png",
                height: 30,
              ),
              const SizedBox(width: 35),
              Text(
                "$day, ",
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                month,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7), fontSize: 18),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "$temp1 / ",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Text(
                "$temp2°",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8), fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
