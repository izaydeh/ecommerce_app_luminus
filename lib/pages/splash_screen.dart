import 'package:ecomm_app/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Muli'),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    ),
  );
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController _controller = PageController();
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const Text(
              "TOKOTO",
              style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Welcome to Tokoto,Let\'s shop!",
              style: TextStyle(color: Color.fromARGB(255, 80, 80, 80)),
            ),

            const SizedBox(height: 60),
            Flexible(
              child: PageView(
                controller: _controller,
                onPageChanged: (value) {
                  setState(() {
                    isLast = value == 2;
                  });
                },
                children: [
                  SizedBox(
                    width: 100,
                    child: Image.asset("assets/images/splash_1.png"),
                  ),
                  SizedBox(
                    width: 100,
                    child: Image.asset("assets/images/splash_2.png"),
                  ),
                  SizedBox(
                    width: 200,
                    child: Image.asset("assets/images/splash_3.png"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.deepOrangeAccent,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
            SizedBox(height: 130),
            SizedBox(
              width: 300,
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
                  if (isLast) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  } else {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear,
                    );
                  }
                },
                child: Text("Continue", style: TextStyle(fontSize: 17)),
              ),
            ),
            SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}
