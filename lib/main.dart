import 'dart:convert';

import 'package:api_le/page.dart';
import 'package:api_le/page2.dart';
import 'package:api_le/post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {'/page2': (context) => Page2()},
        debugShowCheckedModeBanner: false,
        home: Pade());
  }
}
