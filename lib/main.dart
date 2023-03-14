import 'package:flutter/material.dart';
import 'package:gtthemepark/F.dart';
import 'package:gtthemepark/report.dart';
import 'package:gtthemepark/spotify1.dart';
import 'package:gtthemepark/view.dart';
import 'package:gtthemepark/wonderlaw.dart';

import 'Spotify.dart';
import 'app.dart';
import 'chat.dart';
import 'list2.dart';
import 'listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const sp1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
