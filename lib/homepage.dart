import 'package:flutter/material.dart';
import 'package:study_squad/classScreen.dart';
import 'package:study_squad/profileScreen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var icons = Icons;
    return Scaffold(
        backgroundColor: Color.fromRGBO(54, 174, 226, 0.992),
        body: SingleChildScrollView(
          child: SafeArea(
              child: SizedBox(
                  height: 800,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          //welcome row
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // welcome statement
                            Text(
                              "Hello, Nada!",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),

                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (_) => profileScreen(),
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.account_circle,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      //seaech bar
                      Container(
                        width: 350,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 208, 223, 241),
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(10),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 151, 151, 151),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Search",
                              style: TextStyle(
                                color: Color.fromARGB(255, 101, 100, 104),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      //courses
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: Center(
                              child: Column(
                                children: [
                                  //heading
                                  const Text(
                                    "Courses",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  //courses cards
                                  GestureDetector(
                                    onTap: () {Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (_) => Classscreen(),
                                  ),
                                );},
                                    child: CourseCardData(
                                      name: 'Mobile App Engineering',
                                      Instructor: "Alyaa Alharbi",
                                      chapters: "6",
                                      Department: "SE",
                                      cardColor: const Color.fromARGB(
                                          255, 249, 169, 196),
                                    ),
                                  ),

                                  CourseCardData(
                                    name: 'Software Testing',
                                    Instructor: "Budoor Allehyani",
                                    chapters: "12",
                                    Department: "SE",
                                    cardColor: const Color.fromARGB(
                                        255, 241, 186, 251),
                                  ),
                                  CourseCardData(
                                    name: 'Software Desgin',
                                    Instructor: "Batool Allihibi",
                                    chapters: "5",
                                    Department: "SE",
                                    cardColor: const Color.fromARGB(
                                        255, 248, 184, 152),
                                  ),
                                  CourseCardData(
                                    name: 'Software Desgin',
                                    Instructor: "Batool Allihibi",
                                    chapters: "5",
                                    Department: "SE",
                                    cardColor: const Color.fromARGB(
                                        255, 173, 219, 240),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ))),
        ));
  }
  

  

}

class CourseCardData extends StatefulWidget {
  final String name;
  final String Instructor;
  final String chapters;
  final String Department;
  final Color cardColor;

  CourseCardData(
      {required this.name,
      required this.Instructor,
      required this.chapters,
      required this.Department,
      required this.cardColor});

  @override
  State<CourseCardData> createState() => _CourseCardDataState();
}

class _CourseCardDataState extends State<CourseCardData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      padding: EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            color: widget.cardColor, borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //course name
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //more details
                  Text(
                    (widget.Instructor),
                    style: TextStyle(
                      fontSize: 16.0,
                      color: const Color.fromARGB(255, 55, 55, 58),
                    ),
                  ),
                  Text((widget.Department),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: const Color.fromARGB(255, 55, 55, 58),
                      ))
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            //chapters
            Column(
              children: [
                Text(
                  widget.chapters,
                  style: TextStyle(fontSize: 25),
                ),
                Text("chapters"),
              ],
            ),
          ],
        ),
      ),
    );
  }

    CourseCardData copyWith({String? name, String? Instructor, String? chapters, String? Department, Color? cardColor,}) {
      return CourseCardData(
        name: name ?? this.widget.name,
    Instructor: Instructor ?? this.widget.Instructor,
    chapters: chapters ?? this.widget.chapters,
    Department: Department ?? this.widget.Department,
    cardColor: cardColor ?? this.widget.cardColor,
      );
    }
}
