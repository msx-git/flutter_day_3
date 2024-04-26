import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: CupertinoColors.systemBlue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      blurRadius: 20,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Image Circle
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.indigo,
                            shape: BoxShape.circle,
                          ),
                        ),

                        /// Personal Info
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "UX Designer",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.camera_rounded),
                                Icon(Icons.bike_scooter_rounded),
                                Icon(Icons.camera_rounded),
                              ],
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text(
                              "Canada",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        )
                      ],
                    ),

                    /// Divider
                    SizedBox(
                      height: 30,
                      child: Divider(
                        color: Colors.blue.withOpacity(0.2),
                      ),
                    ),

                    /// Interest
                    const Text("Interests"),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text("Trekking"),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text("Running"),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text("Coding"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),

              /// Download Resume
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      blurRadius: 20,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Resume"),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("John Doe CV"), Icon(Icons.download)],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              /// Experience
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      blurRadius: 20,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Experience"),
                    const Divider(),
                    /// Experience - 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Business Name"),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            "2020 - 2022",
                            style: TextStyle(color: Colors.indigo),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "UX/UI Designer",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.check),
                              Expanded(
                                child: Text(
                                    "Lerom ipsum gsodfs fdso fsind dfsn sjfdf fdsoio adosf adfsinf jka  fsiodn sdifm fdsinfgs"),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.check),
                              Expanded(
                                child: Text(
                                    "Lerom ipsum gsodfs fdso fsind dfsn sjfdf fdsoio adosf adfsinf jka  fsiodn sdifm fdsinfgs"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    /// Experience - 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Business Name"),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            "2019 - 2020",
                            style: TextStyle(color: Colors.indigo),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "UX/UI Researcher",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.check),
                              Expanded(
                                child: Text(
                                    "Lerom ipsum gsodfs fdso fsind dfsn sjfdf fdsoio adosf adfsinf jka  fsiodn sdifm fdsinfgs"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
