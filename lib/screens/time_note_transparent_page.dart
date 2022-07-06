import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ui_study/main.dart';

class TimeNoteTransparentPage extends StatefulWidget {
  const TimeNoteTransparentPage({Key? key}) : super(key: key);

  @override
  State<TimeNoteTransparentPage> createState() => _TimeNoteTransparentPageState();
}

class _TimeNoteTransparentPageState extends State<TimeNoteTransparentPage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF7E3CEF),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFF7E3CEF),
          unselectedItemColor: Color(0xFFCDCED2),
        ),
      ),
      home: Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: ClipRRect(
            child: BottomNavigationBar(
              selectedFontSize: 10,
              unselectedFontSize: 10,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
              unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.snippet_folder),
                  label: "Documents",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.pie_chart_rounded),
                  label: "Summary",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month_rounded),
                  label: "Calendar",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.mail_rounded),
                  label: "Messages",
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/images/blue_purple_wallpaper.jpg",
                width: _width,
                height: _height,
                fit: BoxFit.cover,
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).padding.top + 10),
                  const Center(
                    child: Text(
                      "Documents",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(70, 0, 0, 0),
                          spreadRadius: 0,
                          blurRadius: 30,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: SizedBox(
                      width: _width * 0.9,
                      child: TextFormField(
                        style: const TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: const Icon(Icons.search_rounded),
                          hintText: "Search...",
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                          fillColor: Colors.white.withOpacity(0.85),
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: _width * 0.9,
                    child: _createDocument(0, "Design", "TimeNote 3.0 - Landing Page", "The practice of the Flutter"),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: _width * 0.9,
                    child: _createDocument(1, "Free Time", "Running - preparations", "I have to do excercise!"),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: _width * 0.9,
                    child: _createDocument(2, "E-learning", "The Algorithm Courses", "Very important!"),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: _width * 0.9,
                    child: _createDocument(1, "Free Time", "Hang out!", "It is really my free time!"),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _createDocument(int colorIndexNum, String category, String title, String description) {
  var colorIndex = [
    const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      stops: [0, 1],
      colors: [
        Color(0xFFE395E4),
        Color(0xFFCD6AD1),
      ],
    ),
    const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      stops: [0, 1],
      colors: [
        Color(0xFF9B5BF7),
        Color(0xFF7426E8),
      ],
    ),
    const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      stops: [0, 1],
      colors: [
        Color.fromARGB(255, 120, 214, 255),
        Color.fromARGB(255, 32, 188, 255),
      ],
    ),
  ];

  return Container(
    width: MediaQuery.of(navigatorKey.currentContext!).size.width,
    height: 150,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.7),
      borderRadius: const BorderRadius.all(
        Radius.circular(15.0),
      ),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(40, 0, 0, 0),
          spreadRadius: 7,
          blurRadius: 30,
          offset: Offset(5, 5),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                height: 30,
                decoration: BoxDecoration(
                  gradient: colorIndex[colorIndexNum],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(13.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    category,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.more_horiz_rounded,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(height: 28),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ),
  );
}
