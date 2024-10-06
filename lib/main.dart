import 'package:flutter/material.dart';
import 'package:sec7student3screen/routes/english.dart';
import 'package:sec7student3screen/routes/freelance.dart';
import 'package:sec7student3screen/routes/material.dart';
import 'package:sec7student3screen/routes/recordings_english.dart';
import 'package:sec7student3screen/routes/recordings_freelance.dart';
import 'package:sec7student3screen/routes/recordings_softskills.dart';
import 'package:sec7student3screen/routes/recordings_technical.dart';
import 'package:sec7student3screen/routes/courses.dart';
import 'package:sec7student3screen/routes/soft_skills.dart';
import 'package:sec7student3screen/routes/technical.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: '/screen1',
      routes: {
        '/screen1': (context) => const courses(),
        '/technical': (context) => const technical(),
        '/soft_skills': (context) => const soft_skills(),
        '/english': (context) => const english(),
        '/freelance': (context) => const freelance(),
        '/recordings_technical': (context) =>  recordings_technical(),
        '/recordings_freelance': (context) =>  recordings_freelance(),
        '/recordings_freelance': (context) =>  recordings_softskills(),
        '/recordings_freelance': (context) =>  recordings_english(),



      },
    );
  }
}
