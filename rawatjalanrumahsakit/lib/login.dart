import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:http/http.dart' as http; 
import 'package:rawatjalanrumahsakit/navbar.dart';
import 'dart:convert'; 

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() async {
    // Simulate a successful login (replace with actual login logic)
    await Future.delayed(Duration(seconds: 2)); // Simulating a delay
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 50, 15, 30),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      './lib/assets/images/medis1.jpg',
                      scale: 1.0,
                    ),
                    SizedBox(height: 50,),
                    Text(
                      "Welcome Back !",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(229, 57, 53, 1.0),
                      ),
                    ),
                    Text(
                      "Please Login into your account",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(229, 57, 53, 1.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 50, 15, 15),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          filled: true,
                          fillColor: Color.fromRGBO(210, 218, 255, 0.5),
                          hintText: "Enter Email",
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(96, 96, 96, 1.0),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key),
                          filled: true,
                          fillColor: Color.fromRGBO(210, 218, 255, 0.5),
                          hintText: "Enter Password",
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(96, 96, 96, 1.0),
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(220, 10, 15, 40),
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(
                          color: Color.fromRGBO(86, 86, 86, 1.0),
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          _login(); // Call the login function
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(229, 57, 53, 1.0),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0,
                              style: BorderStyle.solid,
                              color: Color.fromRGBO(210, 218, 255, 0.5),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                      child: RichText(
                        text: TextSpan(
                          text: 'Don\'t Have an Account? ',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(86, 86, 86, 1.0),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Contact Admin!',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(229, 57, 53, 1.0),
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Handle tap
                                },
                            ),
                          ],
                        ),
                      ),
                    )
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
