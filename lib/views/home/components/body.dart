
import 'package:fininfocom/views/bluetooth/bluetooth.dart';
import 'package:fininfocom/views/home/components/mybutton.dart';
import 'package:fininfocom/views/profile/profile.dart';
import 'package:fininfocom/views/random_image/randomImage.dart';
import 'package:flutter/material.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                iconData: Icons.animation,
                buttonText: 'Random Dog Image',
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>RandomImage()));
                  // Navigator.popAndPushNamed(context, RandomImage.routeName);
                  print('Share Page');
                },
              ),
              SizedBox(
                height: 20,
              ),
              MyButton(
                iconData: Icons.bluetooth,
                buttonText: 'Enable Bluetooth',
                onTap: (){
                  // AppSettings.openBluetoothSettings();
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>Bluetooth()));
                  // Navigator.push(context, Bluetooth.routeName);
                },
              ),
              SizedBox(
                height: 20,
              ),
              MyButton(
                iconData: Icons.handyman,
                buttonText: 'Profile',
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>Profile()));
                  // Navigator.popAndPushNamed(context, Profile.routeName);
                },
              ),

            ],
          ),
        ),

    );

  }
}