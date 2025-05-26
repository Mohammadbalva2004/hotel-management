import 'package:flutter/material.dart';
import 'package:untitled/login/login.dart';

class UpdatePassword extends StatefulWidget {
  const UpdatePassword({super.key});

  @override
  State<UpdatePassword> createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.pink],
              begin: Alignment.bottomRight,
              end: Alignment.topRight,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 200),
              Text(
                "PASSWORD",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                ),
              ),
              Text(
                "UPDATED",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 10),
              Icon(Icons.check_circle, size: 80, color: Colors.white),
              SizedBox(height: 40),
              Text(
                "Your Password Has Been Updated!",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.pink, fontSize: 20),
                    ),
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
