import 'package:flutter/material.dart';

class Classscreen extends StatefulWidget {
  const Classscreen({super.key});

  @override
  State<Classscreen> createState() => _Classscreen();
}

class _Classscreen extends State<Classscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          toolbarHeight: 100,
          centerTitle: true,
          title: Text(
            "MODELS & METHODS",
            style: TextStyle(color: Colors.white, fontSize: 26),
          ),
          backgroundColor: Color.fromRGBO(54, 174, 226, 0.992),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white)),
          bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              tabAlignment: TabAlignment.center,
              unselectedLabelColor: const Color.fromARGB(255, 201, 201, 201),
              labelColor: Colors.white,
              tabs: [
                Tab(
                  child: Text(
                    "quizzes",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    "statistics",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    "resources",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                Tab(
                  child: Text(
                    "study technique",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                )
              ]),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("quizzes"),
            ),
            Center(
              child: Text("statistics"),
            ),
            Center(
              child: Text("resources"),
            ),
            Center(
              child: Text("study technique"),
            )
          ],
        ),
      ),
    );
  }
}
