import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thema_provider/settings.dart';

import 'model.dart';

class ApplicationConstants {
}
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dark/Light',
      theme: Provider.of<ThemeProvider>(context).themeDataStyle,
      home:Settings(),
    );
  }
}
