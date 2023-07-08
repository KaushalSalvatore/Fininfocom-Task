import 'dart:io';

import 'package:fininfocom/routes.dart';
import 'package:fininfocom/views/home/first_page.dart';
import 'package:flutter/material.dart';

import 'utils/Constants.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.APP_NAME,
      debugShowCheckedModeBanner: false,
      initialRoute: FirstPage.routeName,
      routes: routes,


    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}