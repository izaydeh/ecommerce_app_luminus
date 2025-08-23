import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  "Forgot Password",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Please enter your email and we will send",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 115, 114, 114),
                    fontSize: 15,
                  ),
                ),
                Text(
                  "you a link to return to your account",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 115, 114, 114),
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 115, 114, 114),
                      ),
                      labelText: "Email", // this shows text on the border
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 115, 114, 114),
                      ),
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsetsDirectional.only(end: 25.0),
                        child: SvgPicture.asset("assets/icons/Mail.svg"),
                      ),

                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color.fromARGB(255, 115, 114, 114),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrangeAccent),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 130),
                SizedBox(
                  width: 330,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrangeAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Continue", style: TextStyle(fontSize: 17)),
                  ),
                ),
                SizedBox(height: 100),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 115, 114, 114),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}
