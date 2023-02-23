import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app_tv/view/view_home.dart';
import 'package:test_app_tv/view/view_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <LogicalKeySet, Intent>{
        LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PSTER APP-TV test',
        theme: ThemeData(
            primaryColor: const Color.fromARGB(255, 19, 19, 19),
            scaffoldBackgroundColor: const Color.fromARGB(255, 19, 19, 19),
            appBarTheme: const AppBarTheme(backgroundColor: Colors.black)),
        home: const ViewLogin(),
      ),
    );
  }
}
