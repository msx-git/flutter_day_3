import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_day_3/pages/page_4/widgets/homework_item.dart';
import 'package:flutter_day_3/utils/string_extension.dart';

class Page4 extends StatelessWidget {
  Page4({super.key});

  List<Map<String, dynamic>> hometasks = [
    {
      "title": "Basic english writing",
      "chapter": "chapter-12",
      "description":
          "Excepteur laborum quis incididunt eiusmod magna qui amet irure magna.",
      "time": "40 min",
      "icon": Icons.edit,
    },
    {
      "title": "Basic german listening",
      "chapter": "chapter-9",
      "description":
          "Excepteur laborum quis incididunt eiusmod magna qui amet irure magna.",
      "time": "60 min",
      "icon": Icons.headphones,
    },
    {
      "title": "Basic English Speaking",
      "chapter": "chapter-9",
      "description":
          "Excepteur laborum quis incididunt eiusmod magna qui amet irure magna.",
      "time": "60 min",
      "icon": Icons.volume_up_outlined,
    },
  ];
  Color primaryColor = Color.fromARGB(255, 48, 4, 153);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Homework',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xff1c188a),
              fontSize: 24),
        ),
        centerTitle: true,
        leadingWidth: 70,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 16,
            color: Colors.indigo,
          ),
          style: IconButton.styleFrom(
            side: BorderSide(color: Colors.indigo.withOpacity(0.3)),
          ),
        ),
        actions: [
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.ellipsis),
            style: IconButton.styleFrom(
                side: BorderSide(
              color: Colors.indigo.withOpacity(0.3),
            )),
            color: Colors.indigo,
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),

              /// Date choosing
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WeekDay(isChosen: false, day: "Du", date: 22),
                  WeekDay(isChosen: false, day: "Sesh", date: 23),
                  WeekDay(isChosen: false, day: "Chor", date: 24),
                  WeekDay(isChosen: true, day: "Pay", date: 25),
                  WeekDay(isChosen: false, day: "Juma", date: 26),
                  WeekDay(isChosen: false, day: "Shan", date: 27),
                  WeekDay(isChosen: false, day: "Yak", date: 28),
                ],
              ),
              const SizedBox(height: 40),
              Text(
                "Ingliz tili uyga vazifasi".capitalize(),
                style: const TextStyle(
                  fontSize: 20,
                  color: Color(0xff19285e),
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 40),
              for (var homework in hometasks)
                HomeWorkItem(
                  title: homework['title'],
                  description: homework['description'],
                  icon: homework['icon'],
                  primaryColor: primaryColor,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class WeekDay extends StatelessWidget {
  const WeekDay(
      {super.key,
      required this.day,
      required this.date,
      required this.isChosen});

  final String day;
  final int date;

  final bool isChosen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          day,
          style: const TextStyle(
              color: Colors.deepPurple, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 6),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: isChosen ? Colors.deepPurple : Colors.white,
              border:
                  Border.all(color: Colors.black.withOpacity(0.3), width: 0.5),
              shape: BoxShape.circle),
          alignment: Alignment.center,
          child: Text(
            "$date",
            style:
                TextStyle(color: isChosen ? Colors.white : Colors.deepPurple),
          ),
        ),
      ],
    );
  }
}
