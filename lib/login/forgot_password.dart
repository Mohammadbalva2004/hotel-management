import 'package:flutter/material.dart';
import 'package:untitled/login/login.dart';
import 'package:untitled/login/reset_passwd.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.grey),
    );
  }

  void _handleResetPassword() {
    String email = _emailController.text.trim();

    if (email.isEmpty) {
      _showSnackBar("Please enter your email address");
      return;
    }
    if (!email.contains('@gmail.com')) {
      _showSnackBar("Please enter a valid email address");
      return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResetPasswd()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              const Icon(Icons.lock, color: Colors.pink, size: 70),
              const SizedBox(height: 40),
              const Text(
                "Forgot",
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.w500,
                  fontSize: 45,
                ),
              ),
              const Text(
                "Password?",
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.w200,
                  fontSize: 45,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "No worries, we'll send you",
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
              const Text(
                "Reset Instructions",
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 60),
              Container(
                height: 315,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 30,
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.deepOrangeAccent, Colors.pink],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    TextFormField(
                      controller: _emailController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email_rounded,
                          color: Colors.white,
                        ),
                        hintText: "EMAIL or Phone No.",
                        hintStyle: const TextStyle(color: Colors.white),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: _handleResetPassword,
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Reset Password",
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "Back To Login",
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
