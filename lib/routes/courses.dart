import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sec7student3screen/routes/english.dart';
import 'package:sec7student3screen/routes/freelance.dart';
import 'package:sec7student3screen/routes/soft_skills.dart';
import 'package:sec7student3screen/routes/technical.dart';

class courses extends StatefulWidget {
  const courses({super.key});

  @override
  _coursesState createState() => _coursesState();
}

class _coursesState extends State<courses> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(340, 70),
          child: Container(
            margin: EdgeInsets.only(top: 10, right: 10, left: 10),
            width: 340,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFF0FAB7D),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  spreadRadius: 0, // Spread radius
                  blurRadius: 6, // Blur radius
                  offset: Offset(0, 8), // Shadow appears only at the bottom
                ),
              ],
            ),
            child: AppBar(
              leading: Padding(
                padding: EdgeInsets.only(left: 10, top: 4),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/man.png"), // Path to your image asset
                ),
              ),
              title: Text(
                'Courses',
                style: TextStyle(
                    color: Colors.white, fontFamily: "PoppinsRegular"),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                IconButton(
                  icon: Icon(Icons.notifications, color: Colors.white),
                  onPressed: () {
                    // Action when the notification icon is pressed
                  },
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            _buildCourseItem(
              context,
              title: "Technical",
              imagePath: 'assets/images/technical.png',
              targetScreen: technical(),
            ),
            _buildCourseItem(
              context,
              title: "Soft Skills",
              imagePath: 'assets/images/soft-skills.png',
              targetScreen: soft_skills(),
            ),
            _buildCourseItem(
              context,
              title: "English",
              imagePath: 'assets/images/english.png',
              targetScreen: english(),
            ),
            _buildCourseItem(
              context,
              title: "Freelance",
              imagePath: 'assets/images/freelance.png',
              targetScreen: freelance(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseItem(BuildContext context, {required String title, required String imagePath, required Widget targetScreen}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetScreen),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 10),
        margin: EdgeInsets.only(top: 10, right: 10, left: 10),
        width: 372,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 6,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  imagePath,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(width: 15),
            Container(
              padding: EdgeInsets.only(top: 18),
              child: Text("|\n|\n|\n"),
            ),
            SizedBox(width: 15),
            Text(
              title,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: "PoppinsRegular",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
