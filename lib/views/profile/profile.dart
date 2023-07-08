import 'package:fininfocom/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'components/body.dart';
class Profile extends StatelessWidget
{
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
       body: Body(),
    );
  }

}