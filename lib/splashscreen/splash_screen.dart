import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/login/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Login()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900.h,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange, Colors.pink],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/images/splashhh.png",
                height: 200.h,
                width: 200.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70.w),
              child: Image.asset("assets/images/splashh.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 110.h, left: 20.w),
              child: Image.asset(
                "assets/images/splash.png",
                height: 700.h,
                width: 210.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
