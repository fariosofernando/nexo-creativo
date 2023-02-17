import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'app_dashboard.dart';
import 'app_instances.dart';
import 'color_schemes.g.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String title = 'Nexu Creativo Dashboard Page';

  @override
  Widget build(BuildContext context) {
    // debugInvertOversizedImages = false;

    return Observer(builder: (_) {
      return MaterialApp(
        title: 'Nexu Creativo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        themeMode: AppInstances.instance.globalStore.darkModeActivated ? ThemeMode.dark : ThemeMode.light,
        home: Scaffold(
          body: AppDashboard(title: title),
        ),
      );
    });
  }
}
