import 'package:dvla/responsive/responsive_layout.dart';
import 'package:dvla/screens/desktop/desktop_scaffold.dart';
import 'package:dvla/screens/mobile/mobile_scaffold.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Reception',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: kPrimaryColor,
            shape: const StadiumBorder(),
            maximumSize: const Size(double.infinity, 56),
            minimumSize: const Size(double.infinity, 56),
          ),
        ),
      ),
      home: const ResponsiveLayout(
        desktopScaffold: DesktopScaffold(),
        tabletScaffold: DesktopScaffold(),
        mobileScaffold: MobileScaffold(),
      ),
    );
  }
}
