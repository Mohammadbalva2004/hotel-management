import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/login/update_password.dart';

class ResetPasswd extends StatefulWidget {
  const ResetPasswd({super.key});

  @override
  State<ResetPasswd> createState() => _ResetPasswdState();
}

class _ResetPasswdState extends State<ResetPasswd> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _handleSignUp() {
    String password = _passwordController.text.trim();
    String confirmPassword = _confirmPasswordController.text.trim();

    if (password.isEmpty || confirmPassword.isEmpty) {
      _showSnackBar("Fill all the details");
      return;
    }

    if (password.length < 8) {
      _showSnackBar("Password must be at least 8 characters long");
      return;
    }

    if (password != confirmPassword) {
      _showSnackBar("Passwords do not match");
      return;
    }

    RegExp regex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^A-Za-z0-9]).+$',
    );
    if (!regex.hasMatch(password)) {
      _showSnackBar(
        "Password must have a mix letters, numbers, and special symbols.",
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UpdatePassword()),
    );
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.grey),
    );
  }

  InputDecoration _passwordInputDecoration(
    String hint,
    bool obscure,
    VoidCallback toggle,
  ) {
    return InputDecoration(
      contentPadding: const EdgeInsets.all(10),
      prefixIcon: const Icon(Icons.lock, color: Colors.white),
      suffixIcon: IconButton(
        icon: Icon(
          obscure ? Icons.visibility_off : Icons.visibility,
          color: Colors.white,
        ),
        onPressed: toggle,
      ),
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.white),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 100),
              Icon(Icons.lock_reset, color: Colors.pink, size: 100),
              const SizedBox(height: 10),
              Text(
                "Reset Ready",
                style: GoogleFonts.saira(
                  color: Colors.pink,
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                ),
              ),
              Text(
                "Your safety matters to us",
                style: GoogleFonts.saira(color: Colors.black45),
              ),
              Text(
                "Let's make things right.",
                style: GoogleFonts.saira(color: Colors.black45),
              ),
              const SizedBox(height: 50),
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.pink],
                    begin: Alignment.bottomRight,
                    end: Alignment.topRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      SizedBox(height: 70),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _obscurePassword,
                        style: const TextStyle(color: Colors.white),
                        decoration: _passwordInputDecoration(
                          "Enter New password",
                          _obscurePassword,
                          () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _confirmPasswordController,
                        obscureText: _obscureConfirmPassword,
                        style: const TextStyle(color: Colors.white),
                        decoration: _passwordInputDecoration(
                          "Enter Confirm password",
                          _obscureConfirmPassword,
                          () {
                            setState(() {
                              _obscureConfirmPassword =
                                  !_obscureConfirmPassword;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: _handleSignUp,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                        ),
                        child: const Text(
                          "Update the Password ",
                          style: TextStyle(color: Colors.pink, fontSize: 16),
                        ),
                      ),
                    ],
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
