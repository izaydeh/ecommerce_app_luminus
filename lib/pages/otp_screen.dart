import 'package:ecomm_app/pages/forget_password_screen.dart';
import 'package:flutter/material.dart';


class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                "OTP Verification",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Text(
                "we sent your code to +1 898 860 ***",
                style: TextStyle(
                  color: const Color.fromARGB(255, 115, 114, 114),
                  fontSize: 15,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 115, 114, 114), // default grey
                  ),
                  children: const [
                    TextSpan(text: "This code will be expired in "),
                    TextSpan(
                      text: "00:13",
                      style: TextStyle(
                        color: Colors.deepOrangeAccent, // orange part
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 120),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return Container(
                    width: 50,
                    height: 80,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: "",
                        contentPadding: EdgeInsets.symmetric(vertical: 14),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.deepOrangeAccent,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 100),

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
                        builder: (context) => const ForgetPasswordScreen(),
                      ),
                    );
                  },
                  child: Text("Continue", style: TextStyle(fontSize: 17)),
                ),
              ),
              SizedBox(height: 100),

              TextButton(
                onPressed: () {},
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(
                    color: Color.fromARGB(255, 115, 114, 114),
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                    decorationColor: Color.fromARGB(255, 115, 114, 114),
                    decorationThickness: 1.6,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
