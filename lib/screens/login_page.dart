import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(2.5, -1.2),
            child: Container(
              width: _width * 0.7,
              height: _height * 0.3,
              decoration: BoxDecoration(
                color: const Color.fromARGB(41, 255, 0, 0),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(_width * 0.7, _height * 0.3),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-5, 0),
            child: Container(
              width: _width * 0.8,
              height: _height * 0.8,
              decoration: BoxDecoration(
                color: const Color.fromARGB(22, 255, 0, 255),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(_width * 0.8, _height * 0.8),
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(1.5, 0.8),
            child: Container(
              width: _width * 0.5,
              height: _height * 0.5,
              decoration: BoxDecoration(
                color: const Color.fromARGB(82, 18, 101, 226),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(_width * 0.5, _height * 0.5),
                ),
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
            child: Container(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 224, 224).withOpacity(0.5),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                width: _width,
                height: _height,
                child: Column(
                  children: [
                    const Spacer(flex: 1),
                    const Text(
                      "Hello Again!",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 55, 50, 72),
                      ),
                    ),
                    const Text(
                      "Welcome back you've\nbeen missed!",
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(flex: 1),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Enter username",
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    const Spacer(flex: 5),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
