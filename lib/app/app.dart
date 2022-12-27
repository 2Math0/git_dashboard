import 'package:flutter/material.dart';
import 'package:git_dashboard/presentation/resources/theme_manager.dart';

import '../presentation/representation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Git DashBoard',
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      home: const Representation(),
    );
  }
}
