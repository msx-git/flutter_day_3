import 'package:flutter/material.dart';
import 'widgets/info_row.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios_rounded,color: Colors.white),
                  ),
                  const SizedBox(width: 50),
                  const Text(
                    "Bandung,",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    " Indonesia",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Next 7 Days",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const InfoRow(icon: "sunny", day: "Monday", month: "03, Oct", temp1: 32, temp2: 31),
            const InfoRow(icon: "rainy", day: "Tuesday", month: "04, Oct", temp1: 22, temp2: 23),
            const InfoRow(icon: "sunny", day: "Wednesday", month: "05, Oct", temp1: 30, temp2: 31),
            const InfoRow(icon: "cloudy", day: "Thursday", month: "07, Oct", temp1: 24, temp2: 26),
            const InfoRow(icon: "cloudy_sunny", day: "Friday", month: "08, Oct", temp1: 26, temp2: 27),
            const InfoRow(icon: "cloudy_sunny", day: "Saturday", month: "09, Oct", temp1: 27, temp2: 28),
            const InfoRow(icon: "rainy", day: "Sunday", month: "10, Oct", temp1: 22, temp2: 23),
          ],
        ),
      ),
    );
  }
}
