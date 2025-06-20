import 'package:flutter/material.dart';
import 'package:study_squad/firstScreen.dart';
import 'package:study_squad/homepage.dart';

class profileMenu extends StatelessWidget {
  const profileMenu({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onpress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onpress;
  final bool endIcon;
  final Color? textColor;
  

  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onpress,
      leading: Container(
        width: 40, height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blueGrey.withOpacity(0.1)
        ),
        child: Icon(
          icon,color:Color.fromRGBO(54, 174, 226, 0.992) ,
          ),
        ),
        title: Text(title, style: TextStyle(fontSize: 20,letterSpacing: 1,color:textColor),),
        subtitle: Text(subtitle),
    
        trailing:endIcon? Container(
        width: 30, height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.blueGrey.withOpacity(0.1)
        ),
        child: Icon(
          Icons.edit,size: 15,
          ),
        ):null, 
      );
  }
}

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      leading: IconButton(onPressed: (){Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (_) => Homepage(),
                                  ),
                                );} , icon:  Icon(Icons.arrow_back_ios, color: Colors.white,size: 25,)),
      title: Text('profile page', style: TextStyle(fontSize: 26,color: Colors.white),),
      centerTitle: true,
      backgroundColor: const Color.fromRGBO(54, 174, 226, 0.992)
    ),



    body:SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10,),
          SizedBox(
            width: 110, height: 110,
            child:ClipRRect(borderRadius:BorderRadius.circular(100),
            child:Image.network("https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o="),
            ),
          ),
          const SizedBox(height: 10,),
          Text('Student Name',style:TextStyle(fontSize: 20 ),),
          const SizedBox(height: 30,),
          const Divider(),
          const SizedBox(height: 30,),
          /// MENU
          profileMenu(
            title:"Email",subtitle:"xxxxxx@uni.edu",icon: Icons.mail,onpress: (){},
          ),
          profileMenu(
            title:"major",subtitle:"computer scinence",icon: Icons.library_books,onpress: (){},endIcon: true,
          ),
          profileMenu(
            title:"university",subtitle:"XYZ UNiversity",icon: Icons.school,onpress: (){},endIcon: true,
          ),
          profileMenu(
            title:"year",subtitle:"Sophmore",icon: Icons.grading,onpress: (){},endIcon: true,
          ),
          const Divider(),
          const SizedBox(height: 10,),
          profileMenu(
            title:"Logout",subtitle:"want to logout?",icon: Icons.logout,onpress: (){Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (_) => firstscreen(),
                                  ),
                                );},endIcon: false,textColor: Colors.red,
          ),

          
          
          
          ],
      ),
    )
  

);
  }
}
