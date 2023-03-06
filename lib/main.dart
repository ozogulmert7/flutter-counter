import 'package:flutter/material.dart';

import 'package:petgoapp/screens/todolist.dart';
import 'screens/counter.dart';
import 'screens/nalan.dart';
import 'screens/toplama.dart';
import 'screens/iskele.dart';
import 'screens/calc.dart';
import 'screens/counterplus.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '9219-Mert Özoğul',
      theme: ThemeData(primarySwatch: Colors.red),
     home: const CounterPlus(),
    );
  }
}
