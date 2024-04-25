import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../presentation/home_screen.dart';
import '../presentation/res/app_theme.dart';

class ElectricalStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
      title: 'Electrical Store',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: AppTheme.themeMode,
      debugShowCheckedModeBanner: false,
    );
  }
}
