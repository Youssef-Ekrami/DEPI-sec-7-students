import 'package:flutter/material.dart';

class UserModel {
  final String name;

  UserModel({required this.name});
}

class recordings_technical extends StatelessWidget {
  recordings_technical({super.key});

  List<UserModel> _recordings = [
    UserModel(name: "Session one"),
    UserModel(name: "Session two "),
    UserModel(name: "Session three"),
  ];

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
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 6,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: AppBar(
                  title: Text(
                    'Recordings',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "PoppinsRegular",
                    ),
                  ),
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  iconTheme: IconThemeData(
                    color: Colors.white,
                  ),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.notifications, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                )),
          ),
          body: ListView.builder(
            padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
            itemBuilder: (context, index) => buildUserItem(_recordings[index]),
            itemCount: _recordings.length,
          )),
    );
  }

  Widget buildUserItem(UserModel record) => GestureDetector(
    onTap: () {},
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
                'assets/images/img_2.png',
                width: 50,
                height: 42,
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
            "${record.name}",
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
