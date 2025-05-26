import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login/login.dart';
import 'package:untitled/login/terms_condition.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _obscurePassword = true;
  bool _obscureconfirmpassword = true;
  bool _isChecked = false;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _handleSignUp() {
    String name = _nameController.text.trim();
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String confirmPassword = _confirmPasswordController.text.trim();

    if (name.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      _showSnackBar("Please Fill All The Details");
      return;
    }
    if (!email.contains('@gmail.com')) {
      _showSnackBar("Please enter a valid email address");
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
      _showSnackBar("Password must be at least 8 characters long");
      return;
    }

    if (password != confirmPassword) {
      _showSnackBar("Passwords Do Not Match");
      return;
    }

    if (!_isChecked) {
      _showSnackBar("Please Accept Terms & Conditions");
      return;
    }

    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.grey),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    gradient: LinearGradient(
                      colors: [Colors.orange, Colors.pink],
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  height: 250,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 40),
                        Text(
                          "Let's",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Text(
                          "Create",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Your",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Account",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    children: [
                      const SizedBox(height: 70),
                      TextFormField(
                        controller: _nameController,
                        style: const TextStyle(color: Colors.pink),
                        decoration: _inputDecoration(
                          "ENTER FULL NAME",
                          Icons.person,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _emailController,
                        style: const TextStyle(color: Colors.pink),
                        decoration: _inputDecoration(
                          "ENTER YOUR EMAIL",
                          Icons.email_rounded,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _obscurePassword,
                        style: const TextStyle(color: Colors.pink),
                        decoration: _passwordInputDecoration(
                          "ENTER PASSWORD",
                          _obscurePassword,
                          () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _confirmPasswordController,
                        obscureText: _obscureconfirmpassword,
                        style: const TextStyle(color: Colors.pink),
                        decoration: _passwordInputDecoration(
                          "CONFIRM PASSWORD",
                          _obscureconfirmpassword,
                          () {
                            setState(() {
                              _obscureconfirmpassword =
                                  !_obscureconfirmpassword;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                      CheckboxListTile(
                        contentPadding: EdgeInsets.zero,
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        title: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'I accept the ',
                                style: const TextStyle(color: Colors.black),
                                recognizer:
                                    TapGestureRecognizer()
                                      ..onTap = () {
                                        setState(() {
                                          _isChecked = true;
                                        });
                                      },
                              ),
                              TextSpan(
                                text: 'Terms & Conditions',
                                style: const TextStyle(
                                  color: Colors.pink,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer:
                                    TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder:
                                                (context) =>
                                                    const TermsCondition(),
                                          ),
                                        );
                                      },
                              ),
                            ],
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.pink,
                      ),

                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: _handleSignUp,
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Text(
                              "Sign-Up",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hint, IconData icon) {
    return InputDecoration(
      contentPadding: const EdgeInsets.all(10),
      prefixIcon: Icon(icon, color: Colors.pink),
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.pink),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Colors.pink),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Colors.pink),
      ),
    );
  }

  InputDecoration _passwordInputDecoration(
    String hint,
    bool obscure,
    VoidCallback onPressed,
  ) {
    return InputDecoration(
      contentPadding: const EdgeInsets.all(10),
      prefixIcon: const Icon(Icons.lock, color: Colors.pink),
      suffixIcon: IconButton(
        icon: Icon(
          obscure ? Icons.visibility_off : Icons.visibility,
          color: Colors.pink,
        ),
        onPressed: onPressed,
      ),
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.pink),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Colors.pink),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Colors.pink),
      ),
    );
  }
}
