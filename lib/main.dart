import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram/buttonPage.dart/theme.dart';
import 'package:instagram/widgets/shop_page.dart';
import 'package:instagram/widgets/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => ChangeNotifierProvider(
          create: (BuildContext context) => ThemeProvider(isDarkMode: true),
          child: AppBar()),
    ),
  );
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: ((context, ThemeProvider, child) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: ThemeProvider.getTheme,
          darkTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: SplashPage(),
        );
      }),
    );
  }
}
