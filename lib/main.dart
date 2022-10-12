import 'package:flutter/material.dart';
import 'claunsWidget.dart';

/**
 * Name: Scott Weber
 * Date: 10/5/2022
 * Description:
 * Bugs:
 * Reflection:
 */

void main() {
  runApp(const MaterialApp(title: 'My App', home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clauns'), centerTitle: true,),
      body: const ClaunsWidget(),
    );
  }
}
