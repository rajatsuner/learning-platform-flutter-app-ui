import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_platform_app_ui/screens/home_screen/home_screen.dart';
import 'package:learning_platform_app_ui/themes_info.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: ThemeInfo.kWhite));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dribble Learning Platform',
      theme: ThemeData(
          scaffoldBackgroundColor: ThemeInfo.backgroundColor,
          appBarTheme: const AppBarTheme(
              backgroundColor: ThemeInfo.backgroundColor,
              foregroundColor: ThemeInfo.kBlack,
              elevation: 0)),
      home: const HomeScreen(),
    );
  }
}
