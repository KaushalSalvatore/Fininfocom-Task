import 'package:fininfocom/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'components/body.dart';
class Bluetooth extends StatelessWidget
{
  static String routeName = "/bluetooth";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
       body: Body(),
    );
  }

}