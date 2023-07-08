import 'package:fininfocom/utils/size_config.dart';
import 'package:fininfocom/views/home/components/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget
{
  static String routeName = "/firstpage";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
            body: Body(),
    );
  }
  
}