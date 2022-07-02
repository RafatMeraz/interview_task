import 'package:flutter/material.dart';

import 'views/screens/home/home.dart';

class InterviewTaskApp extends StatelessWidget {
  const InterviewTaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
