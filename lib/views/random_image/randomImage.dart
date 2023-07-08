import 'package:fininfocom/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'components/body.dart';
class RandomImage extends StatelessWidget
{
  static String routeName = "/randomimage";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
       body: Body(),
    );
  }

}