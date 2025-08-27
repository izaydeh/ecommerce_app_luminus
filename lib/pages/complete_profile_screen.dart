import 'package:ecomm_app/pages/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
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
                "Complete Profile",
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
                    hintText: "Enter your first name",
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 115, 114, 114),
                    ),
                    labelText: "First Name", 
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
                      padding: const EdgeInsetsDirectional.only(end: 27),
                      child: SvgPicture.asset("assets/icons/User.svg"),
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
                  decoration: InputDecoration(
                    hintText: "Enter your last name",
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 115, 114, 114),
                    ),
                    labelText: "Last Name", // this shows text on the border
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
                      padding: const EdgeInsetsDirectional.only(end: 27),
                      child: SvgPicture.asset("assets/icons/User.svg"),
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
                  decoration: InputDecoration(
                    hintText: "Enter your phone number",
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 115, 114, 114),
                    ),
                    labelText: "Phone Number", // this shows text on the border
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
                      padding: const EdgeInsetsDirectional.only(end: 32),
                      child: SvgPicture.asset(
                        "assets/icons/Phone.svg",
                        width: 15,
                      ),
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
                  decoration: InputDecoration(
                    hintText: "Enter your phone address",
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 115, 114, 114),
                    ),
                    labelText: "Address", // this shows text on the border
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
                      padding: const EdgeInsetsDirectional.only(end: 30),
                      child: SvgPicture.asset(
                        "assets/icons/Location point.svg",
                      ),
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
                        builder: (context) => const OtpScreen(),
                      ),
                    );
                  },
                  child: Text("Continue", style: TextStyle(fontSize: 17)),
                ),
              ),
              SizedBox(height: 40),

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
