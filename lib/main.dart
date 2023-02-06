import 'package:flutter/material.dart';
// import 'package:flutter_web_plugins/url_strategy.dart' as url;
import 'package:flutter_mobx/flutter_mobx.dart';
import 'app_dashboard.dart';
import 'app_instances.dart';
import 'color_schemes.g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // setUrlStrategy(PathUrlStrategy());
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugInvertOversizedImages = false;

    return Observer(builder: (context) {
      return MaterialApp(
        title: 'Portfolio',
        debugShowCheckedModeBanner: false,
        theme: (AppInstances.instance.globalStore.darkModeActivated == false) ? ThemeData(useMaterial3: true, colorScheme: lightColorScheme) : null,
        darkTheme: (AppInstances.instance.globalStore.darkModeActivated == true) ? ThemeData(useMaterial3: true, colorScheme: darkColorScheme) : null,
        home: const AppDashboard(title: 'My Portifolio Dashboard Page'),
      );
    });
  }
}
