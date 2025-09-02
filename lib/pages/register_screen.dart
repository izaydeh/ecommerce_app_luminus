import 'package:ecomm_app/my%20widgets/text_form_widget.dart';
import 'package:ecomm_app/pages/complete_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _reEnterPasswordController = TextEditingController();

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
          icon: Icon(Icons.arrow_back_ios),
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
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: MyTextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email Can't be empty";
                          } else if (!value.contains('@')) {
                            return "Please Enter Vaild Email";
                          } else {
                            return null;
                          }
                        },
                        hintText: "Enter your email",
                        lableText: "Email",
                        iconPath: "assets/icons/Mail.svg",
                      ),
                    ),

                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: MyTextFormField(
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password Can't be empty";
                          } else if (value.length < 8) {
                            return "Please Enter Vaild Password";
                          } else {
                            return null;
                          }
                        },
                        obsecureText: true,
                        hintText: "Enter your Password",
                        lableText: "Password",
                        iconPath: "assets/icons/Lock.svg",
                        endPadding: 30,
                      ),
                    ),

                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: MyTextFormField(
                        controller: _reEnterPasswordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password Can't be empty";
                          } else if (value.length < 8) {
                            return "Please Enter Vaild Password";
                          } else if (value != _passwordController.text) {
                            return "Passwords Not Matched!";
                          } else {
                            return null;
                          }
                        },
                        obsecureText: true,
                        hintText: "Re-enter your password",
                        lableText: "Confirm Password",
                        iconPath: "assets/icons/Lock.svg",
                        endPadding: 30,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50),
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
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CompleteProfileScreen(),
                        ),
                      );
                    }
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
