import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginScreen.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
       appBar: AppBar(
          elevation: 3,
          backgroundColor: Color.fromRGBO(0, 142, 204, 1),
          leading: IconButton(
            onPressed: () {Navigator.pushNamed(context, "/");},
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
              size: 40,
            ),
            padding: EdgeInsets.all(10),
          ),
       ),
      body: Column(
        children: [
        Container(
          alignment: Alignment.centerLeft, 
          padding: EdgeInsets.fromLTRB(50, 40, 50, 0),
          child: Text(
            "Hi!",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(50, 0, 50, 10),
          child: Text(
            "Creat a new account",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(58, 10, 80, 15),
          child: TextField(
            textInputAction: TextInputAction.next,
            cursorColor: Color.fromRGBO(0, 142, 204, 1),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15),
              hintText: "Username",
              prefixIcon: Icon(Icons.person),
              prefixIconColor: Color.fromRGBO(0, 142, 204, 1),
            ),
            ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(58, 15, 80, 15),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: Color.fromRGBO(0, 142, 204, 1),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15),
              hintText: "Email",
              prefixIcon: Icon(Icons.email_rounded),
              prefixIconColor: Color.fromRGBO(0, 142, 204, 1),
            ),
            ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(58, 15, 80, 0),
          child: TextField(
            obscureText: true,
            textInputAction: TextInputAction.next,
            cursorColor: Color.fromRGBO(0, 142, 204, 1),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15),
              hintText: "Password",
              prefixIcon: Icon(Icons.visibility_off),
              prefixIconColor: Color.fromRGBO(0, 142, 204, 1),
            ),
          ),
        ),
        Container(
          width: 220, 
          height: 70, 
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          margin: EdgeInsets.fromLTRB(50, 20, 50, 15),
          child: ElevatedButton(
            onPressed: (){}, 
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(0, 142, 204, 1)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))),
            ),
            child: Text(
              "SIGNUP",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color:Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2,
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?   ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.5,
                ),
              ), 
              GestureDetector(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Loginscreen()),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 142, 204, 1),
                    fontSize: 14.5,
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromRGBO(0, 142, 204, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
