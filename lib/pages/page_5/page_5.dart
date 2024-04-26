import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Course Details',
          style: TextStyle(
              fontWeight: FontWeight.w500,
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
            icon: const Icon(Icons.favorite_border, color: Colors.indigo),
            style: IconButton.styleFrom(
                side: BorderSide(
              color: Colors.indigo.withOpacity(0.3),
            )),
            iconSize: 20,
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Container(
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  // color: Colors.indigo,
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(image: AssetImage('assets/images/student.jpeg'),fit: BoxFit.cover)
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "English for Beginner",
                style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoCube(data: 24, label: "Chapter"),
                  InfoCube(data: 12, label: "Exam"),
                  InfoCube(data: 5, label: "Rewards"),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                  height: 40,
                  child: Text(
                    "About Course",
                    style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  )),
              const Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentiumoptio, eaque rerum! Provident similique accusantium nemo autem. \n\n Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut!",
                style: TextStyle(color: Colors.indigoAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCube extends StatelessWidget {
  const InfoCube({super.key, required this.data, required this.label});

  final int data;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      width: 98,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue.withOpacity(0.4)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$data',
            style: const TextStyle(color: Colors.deepOrange, fontSize: 28),
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.indigo, fontSize: 14),
          )
        ],
      ),
    );
  }
}
