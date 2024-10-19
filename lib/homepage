import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor:  Color.fromARGB(255, 63, 146, 214),
    body:SingleChildScrollView(
      child: SafeArea(
         child: 
        SizedBox(
          height: 800,
          child:Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(//welcome row
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // welcome statement
                    Text("Hello, Nada!",
                    style: TextStyle(
                   color: Color.fromARGB(255, 255, 255, 255),
                   fontSize: 24,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                 SizedBox(width: 10,),
                //profile icon
                    Icon(Icons.account_circle,size: 30,color: Colors.white,),
                   
                  ],
                ),
              ),
                
              const SizedBox(height: 20),
              
              //seaech bar
              Container(
                decoration: BoxDecoration(color:const Color.fromARGB(255, 208, 223, 241),
                borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(10),
                
                child:const Row(
                  children: [
                    Icon(Icons.search,color: Color.fromARGB(255, 151, 151, 151),),
                    SizedBox(width: 5,),
                    Text("Search",style: TextStyle(color: Color.fromARGB(255, 101, 100, 104),),)
                
                  ],
                ), 
              ),
              const SizedBox(height: 30),
              //courses
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                  color:const Color.fromARGB(255, 255, 255, 255),
                    child: Center(
                      child: Column(
                        children: [
                          //heading
                          const Text("Courses",style: 
                          TextStyle(fontSize: 20,fontWeight: 
                          FontWeight.bold),
                          ),
                          //courses cards
                          CourseCardData(
                           name:'Mobile App Engineering',
                           Instructor: "Alyaa Alharbi",
                           chapters: "6",
                           Department: "SE",
                           cardColor: const Color.fromARGB(255, 249, 169, 196),
                           
                            ),
                            
                             CourseCardData(
                            name:'Software Testing',
                            Instructor: "Budoor Allehyani",
                            chapters: "12",
                            Department: "SE",
                            cardColor: const Color.fromARGB(255, 241, 186, 251),
                            ),
                             CourseCardData(
                            name:'Software Desgin',
                            Instructor: "Batool Allihibi",
                            chapters: "5",
                            Department: "SE",
                            cardColor: const Color.fromARGB(255, 248, 184, 152),
                            ),
                            CourseCardData(
                            name:'Software Desgin',
                            Instructor: "Batool Allihibi",
                            chapters: "5",
                            Department: "SE",
                            cardColor: const Color.fromARGB(255, 173, 219, 240),
                            )
                           
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ) 
        ) 
            ),
    )
  )
)
);

  



class CourseCardData extends StatelessWidget {
  final String name;
  final String Instructor;
  final String chapters;
  final String Department;
  final Color cardColor;


  CourseCardData({required this.name, required this.Instructor,required this.chapters, required this.Department,required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      padding: EdgeInsets.all(10.0),
      child:Container(
        decoration: BoxDecoration(
                color: cardColor,
                borderRadius:BorderRadius.circular(15)),
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
                    name,
                    style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold, 
                    ),
              
                  ),
                  //more details
                  Text(
                    (Instructor),
                    style: TextStyle(
                      fontSize: 16.0,
                      color:const Color.fromARGB(255, 55, 55, 58),
                    ),
                  ),
                  Text(
                    (Department),
                    style:TextStyle(
                    fontSize: 16.0,
                    color:const Color.fromARGB(255, 55, 55, 58),
                    )
                  )
                ],
              ),
            ),
            SizedBox(width: 40,),
            //chapters
            Column(
              
              children: [
               Text(chapters),
               Text("chapters"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
