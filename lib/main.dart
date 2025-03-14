import 'package:flutter/material.dart';
import 'package:my_glowing_widget/storybook_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glowing Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey.shade600),
        useMaterial3: true,
      ),
      home: StoryBookApp(),
    );
  }
}

