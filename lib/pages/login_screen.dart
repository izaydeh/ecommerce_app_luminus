import 'package:ecomm_app/my%20widgets/text_form_widget.dart';
import 'package:ecomm_app/pages/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                "Welcome Back",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Text(
                "Sign in with your email and password",
                style: TextStyle(
                  color: const Color.fromARGB(255, 115, 114, 114),
                  fontSize: 15,
                ),
              ),
              Text(
                "or continue with social media",
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
                  ],
                ),
              ),

              SizedBox(height: 80),
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
                          builder: (context) => const RegisterScreen(),
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
