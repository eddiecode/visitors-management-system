import 'package:dvla/responsive/responsive_layout.dart';
import 'package:dvla/screens/desktop/desktopScaffold.dart';
import 'package:dvla/screens/mobile/mobileScaffold.dart';
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
              primary: kPrimaryColor,
              shape: const StadiumBorder(),
              maximumSize: const Size(double.infinity, 56),
              minimumSize: const Size(double.infinity, 56),
            ),
          ),
      ),
      home:  ResponsiveLayout(
        desktopScaffold: DesktopScaffold(),
        tabletScaffold:DesktopScaffold(),
        mobileScaffold:MobileScaffold(),
      ),
    );
  }
}


