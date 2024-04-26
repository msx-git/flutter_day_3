import 'package:flutter/material.dart';

class ExtraDetails extends StatelessWidget {
  const ExtraDetails(
      {super.key,
        required this.icon,
        required this.label,
        required this.labelSmall});

  final IconData icon;
  final String label;
  final String labelSmall;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
            Icon(icon, color: Colors.white),
            // SizedBox(width: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.white.withOpacity(0.7)),
                ),
                Text(labelSmall, style: const TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}