import 'package:flutter/material.dart';
import 'package:for_learn/app/pages/home_page.dart';
import 'package:for_learn/app/pages/rxdart/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: context.watch<ThemeProvider>().currentTheme == themeData.light ? Brightness.light : Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      // home: const RxdartPage(),
      home: HomePage(),
    );
  }
}
