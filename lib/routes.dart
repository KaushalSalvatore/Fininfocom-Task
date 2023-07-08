import 'package:fininfocom/views/bluetooth/bluetooth.dart';
import 'package:fininfocom/views/home/first_page.dart';
import 'package:fininfocom/views/profile/profile.dart';
import 'package:fininfocom/views/random_image/randomImage.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  FirstPage.routeName: (context) => FirstPage(),
  Bluetooth.routeName: (context) => Bluetooth(),
  Profile.routeName: (context) => Profile(),
  RandomImage.routeName: (context) => RandomImage(),

};