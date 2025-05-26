import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/login/create_account.dart';
import 'package:untitled/login/forgot_password.dart';
import 'package:untitled/qr_page/welcome_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscurePassword = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter your email"),
          backgroundColor: Colors.grey,
        ),
      );
      return;
    } else if (!email.contains('@gmail.com')) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter a valid email address"),
          backgroundColor: Colors.grey,
        ),
      );
      return;
    }

    if (password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please enter your password"),
          backgroundColor: Colors.grey,
        ),
      );
      return;
    }
    RegExp regex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^A-Za-z0-9]).+$',
    );
    if (!regex.hasMatch(password)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Password must have a mix letters, numbers, and special symbols.",
          ),
          backgroundColor: Colors.grey,
        ),
      );
      return;
    }
    if (password.length < 8) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Password must be at least 8 characters long"),
          backgroundColor: Colors.grey,
        ),
      );
      return;
    }

    FocusScope.of(context).unfocus();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const WelcomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.pink],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 40,
                    bottom: MediaQuery.of(context).viewInsets.bottom + 20,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                           SizedBox(height: 40.h),
                          Text(
                            "login to",
                            style: GoogleFonts.sahitya(
                              color: Colors.white24,
                              fontSize: 50.sp,
                            ),
                          ),
                          Image.asset(
                            "assets/images/login.png",
                            color: Colors.white,
                            width: 200.w,
                          ),
                           SizedBox(height: 60.h),
                          TextFormField(
                            controller: _emailController,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              hintText: "ENTER YOUR EMAIL",
                              hintStyle: const TextStyle(color: Colors.white),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          TextFormField(
                            controller: _passwordController,
                            style: const TextStyle(color: Colors.white),
                            obscureText: _obscurePassword,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscurePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscurePassword = !_obscurePassword;
                                  });
                                },
                              ),
                              hintText: "ENTER PASSWORD",
                              hintStyle: const TextStyle(color: Colors.white),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.r),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 50.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                onPressed: _handleLogin,
                                child: Container(
                                  height: 35.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(20.r),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "LOGIN",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => const CreateAccount(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 35.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(20.r),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "CREATE ACCOUNT",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotPassword(),
                                ),
                              );
                            },
                            child: Text(
                              "FORGOT PASSWORD?",
                              style: GoogleFonts.daiBannaSil(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                                decorationThickness: 5,
                                color: Colors.white,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
