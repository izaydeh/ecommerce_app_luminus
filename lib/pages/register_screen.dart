import 'package:ecomm_app/pages/complete_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Register Account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Text(
                "Complete your details or continue",
                style: TextStyle(
                  color: const Color.fromARGB(255, 115, 114, 114),
                  fontSize: 15,
                ),
              ),
              Text(
                "with social media",
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

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 115, 114, 114),
                    ),
                    labelText: "Password", // this shows text on the border
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
                      padding: const EdgeInsetsDirectional.only(end: 30.0),
                      child: SvgPicture.asset("assets/icons/Lock.svg"),
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

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Re-enter your password",
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 115, 114, 114),
                    ),
                    labelText:
                        "Confirm Password", // this shows text on the border
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
                      padding: const EdgeInsetsDirectional.only(end: 30.0),
                      child: SvgPicture.asset("assets/icons/Lock.svg"),
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
              SizedBox(height: 30),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CompleteProfileScreen(),
                      ),
                    );
                  },
                  child: Text("Continue", style: TextStyle(fontSize: 17)),
                ),
              ),
              SizedBox(height: 100),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: SizedBox(
                        child: SvgPicture.asset(
                          "assets/icons/google-icon.svg",
                          height: 1000,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 25),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: SizedBox(
                        child: SvgPicture.asset(
                          "assets/icons/facebook-2.svg",
                          height: 1000,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 25),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        elevation: 0,
                      ),
                      onPressed: () {},
                      child: SizedBox(
                        child: SvgPicture.asset(
                          "assets/icons/twitter.svg",
                          height: 1000,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "By continuing your confirm that you agree",
                style: TextStyle(
                  color: const Color.fromARGB(255, 115, 114, 114),
                  fontSize: 12,
                ),
              ),
              Text(
                "with our Term and Condition ",
                style: TextStyle(
                  color: const Color.fromARGB(255, 115, 114, 114),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
