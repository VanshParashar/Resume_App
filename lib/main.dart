import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:resume_app/resume_screen.dart';

Future main() async {
  await Hive.initFlutter();
  // Initialize Hive boxes for each section
  await Hive.openBox('summaryBox');
  await Hive.openBox('workExperienceBox');
  await Hive.openBox('educationBox');
  await Hive.openBox('projectsBox');
  await Hive.openBox('skillsBox');
  await Hive.openBox('languagesBox');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResumeScreen(),
    );
  }
}

