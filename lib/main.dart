import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/screens/main_screen.dart';
import 'viewModel/providers/home_provider.dart';
import 'viewModel/providers/lines_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => LinesProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xff161519)),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
