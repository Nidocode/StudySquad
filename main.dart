import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      leading: Icon(Icons.arrow_back_ios),
      title: Text('profile page'),
      centerTitle: true,
      backgroundColor: const Color.fromRGBO(0, 120, 204, 100)
    ),



    body:SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: 120, height: 120,
            child:ClipRRect(borderRadius:BorderRadius.circular(100),
            child:Image.network("https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o="),
            ),
          ),
          const SizedBox(height: 10,),
          Text('Student Name',style:TextStyle(fontSize: 20),),
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
            title:"Logout",subtitle:"want to logout?",icon: Icons.logout,onpress: (){},endIcon: false,textColor: Colors.red,
          ),

          
          
          
          ],
      ),
    )
  

)
)
);

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
          icon,color:Color.fromRGBO(0, 120, 204, 100) ,
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
