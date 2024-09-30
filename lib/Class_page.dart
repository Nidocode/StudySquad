import 'package:flutter/material.dart';

class Class_pages extends StatefulWidget {
  const Class_pages({super.key});

  @override
  State<Class_pages> createState() => _Class_pages();
}

class _Class_pages extends State<Class_pages> {
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
              child: Column(
                children: [
                  SizedBox(
                    height: 95,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 27,
                      ),
                      Text(
                        "Keep Studying!!  ",
                        style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 99, 98, 98)),
                      ),
                      Image.asset(
                        'lib/icons/cheer.png',
                        height: 50,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 77,
                    width: 700,
                    child: Card(
                      color: Color.fromARGB(252, 252, 252, 255),
                      shadowColor: Colors.grey,
                      margin: EdgeInsets.fromLTRB(27, 0, 27, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'lib/icons/notebook.png',
                            height: 40,
                            color: Color.fromRGBO(54, 174, 226, 0.992),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text("Chapter 1: Propositional logic"),
                                Divider(
                                  color: Color.fromARGB(161, 164, 163, 163),
                                  thickness: 1,
                                  endIndent: 30,
                                ),
                                Text(
                                  "20 questions",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 137, 136, 136),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Color.fromRGBO(54, 174, 226, 0.992),
                                size: 27,
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Container(
                    height: 77,
                    width: 700,
                    child: Card(
                      color: Color.fromARGB(252, 252, 252, 255),
                      shadowColor: Colors.grey,
                      margin: EdgeInsets.fromLTRB(27, 0, 27, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'lib/icons/notebook.png',
                            height: 40,
                            color: Color.fromRGBO(54, 174, 226, 0.992),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text("Chapter 1: Propositional logic"),
                                Divider(
                                  color: Color.fromARGB(161, 164, 163, 163),
                                  thickness: 1,
                                  endIndent: 30,
                                ),
                                Text(
                                  "20 questions",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 137, 136, 136),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Color.fromRGBO(54, 174, 226, 0.992),
                                size: 27,
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Container(
                    height: 77,
                    width: 700,
                    child: Card(
                      color: Color.fromARGB(252, 252, 252, 255),
                      shadowColor: Colors.grey,
                      margin: EdgeInsets.fromLTRB(27, 0, 27, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'lib/icons/notebook.png',
                            height: 40,
                            color: Color.fromRGBO(54, 174, 226, 0.992),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text("Chapter 1: Propositional logic"),
                                Divider(
                                  color: Color.fromARGB(161, 164, 163, 163),
                                  thickness: 1,
                                  endIndent: 30,
                                ),
                                Text(
                                  "20 questions",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 137, 136, 136),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Color.fromRGBO(54, 174, 226, 0.992),
                                size: 27,
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
