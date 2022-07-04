import 'dart:ui';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;

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
                color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.4),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: SizedBox(
                width: _width,
                height: _height,
                child: Column(
                  children: [
                    const Spacer(flex: 10),
                    const Text(
                      "Hello Again!",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 55, 50, 72),
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Welcome back you've\nbeen missed!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 55, 50, 72),
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 50),
                    TextFormField(
                      style: const TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Enter username",
                        hintStyle: const TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      style: const TextStyle(fontSize: 14),
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Password",
                        hintStyle: const TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                            color: Colors.grey.withOpacity(0.4),
                            size: 20,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      width: _width,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Recovery Password",
                          style: TextStyle(
                            color: Color.fromARGB(180, 55, 50, 72),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60.0,
                        width: _width,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFC6B68),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFFC6B68),
                              spreadRadius: -20,
                              blurRadius: 50,
                              offset: Offset(0, 20),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              stops: const [0.2, 1],
                              colors: [
                                Colors.grey.withOpacity(0),
                                Colors.grey,
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          "Or continue with",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: 100,
                          height: 1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              stops: const [0, 0.8],
                              colors: [
                                Colors.grey,
                                Colors.grey.withOpacity(0),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 65,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image.asset('assets/images/google_logo.png', width: 40, height: 40),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: 100,
                          height: 65,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image.asset('assets/images/apple_logo.png', width: 40, height: 40),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: 100,
                          height: 65,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image.asset('assets/images/facebook_logo.png', width: 40, height: 40),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Not a member?",
                          style: TextStyle(fontSize: 12),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Register now",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(flex: 8),
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
