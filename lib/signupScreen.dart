import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_squad/loginScreen.dart';


class Signupscreen extends StatefulWidget {
  const Signupscreen({Key? key}) : super(key: key);

  @override
  SignUpForm createState() => SignUpForm(); //This method return instance of SignUpForm
}

class SignUpForm extends State<Signupscreen> {
  bool _obscureText = true;
  final _formGlobalKey = GlobalKey<FormState>(); // For form validation
  String _username = '';
  String _password = '';
  String _email = '';
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  void _togglePasswordVisibility(){
    setState(() {
      _obscureText= !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
          elevation: 3,
          backgroundColor: Color.fromRGBO(54, 174, 226, 0.992),
          leading: IconButton(
            onPressed: () {Navigator.pushNamed(context, "/");},
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.white,
              size: 25,
            ),
            padding: EdgeInsets.all(10),
          ),
      ),
      body: SingleChildScrollView(
        child:  Padding(padding: const EdgeInsets.all(16),
      child: Form(
        key: _formGlobalKey,
        child: Column(
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
            style: GoogleFonts.titilliumWeb(textStyle:TextStyle(fontSize: 18) ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(58, 10, 80, 15),
          child: TextFormField(
            textInputAction: TextInputAction.next,
            cursorColor: Color.fromRGBO(54, 174, 226, 0.992),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15),
              hintText: "Username",
              prefixIcon: Icon(Icons.person, size: 20),
              prefixIconColor: Color.fromRGBO(54, 174, 226, 0.992),
            ),
            onChanged: (value){
                setState(() {
                  _username = value;
                });
              },
            validator: (value) {
                if(value==null || value!.isEmpty){
                  return 'Enter username';
                }
                return null;
            },
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(58, 15, 80, 15),
          child: TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: Color.fromRGBO(54, 174, 226, 0.992),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15),
              hintText: "Email",
              prefixIcon: Icon(Icons.email_rounded, size: 20),
              prefixIconColor: Color.fromRGBO(54, 174, 226, 0.992),
            ),
            validator: (value) {
              if(value == null || value.isEmpty){
                return 'Enter email';
              }
              else if(!emailRegex.hasMatch(value)){
                return 'Please enter a vaild email address';
              }
            },
            ),
        ),


        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(58, 15, 80, 0),
          child: TextFormField(
            controller: passController,
            obscureText: _obscureText, //the password hiddden
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15),
              hintText: 'Password',
              prefixIcon: Icon(Icons.lock_rounded, size: 20),
              prefixIconColor: Color.fromRGBO(54, 174, 226, 0.992),
              suffixIcon: IconButton(
                icon: Icon( size: 20,
                  _obscureText ? Icons.visibility_off :Icons.visibility,
                ),
                onPressed: _togglePasswordVisibility,
              ),
              suffixIconColor: Color.fromRGBO(54, 174, 226, 0.992),
            ),
            onChanged: (value){
                setState(() {
                  _password = value;
                });
              },
              validator: (value) {
                if(value==null || value.isEmpty){
                  return 'Enter password';
                }
                else if(passController.text.length < 8){
                  return 'Password Length should be more than 8 characters';
                }
                return null;
              },
          ),
        ),



        Container(
          width: 220, 
          height: 70, 
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          margin: EdgeInsets.fromLTRB(50, 20, 50, 15),
          child: ElevatedButton(
            onPressed: (){
              _formGlobalKey.currentState!.validate();
            }, 
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(54, 174, 226, 0.992)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))),
            ),
            child: Text(
              "SIGNUP",
              textAlign: TextAlign.center,
              style: GoogleFonts.titilliumWeb(textStyle:TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color:Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2,
              ),
            ) ),
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
                  style: GoogleFonts.titilliumWeb(textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(54, 174, 226, 0.992),
                    fontSize: 14.5,
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromRGBO(54, 174, 226, 0.992),
                  )),
                ),
              ),
            ],
          ),
        ),
      ]),
      ),
      ),
      )
    );
  }
}
