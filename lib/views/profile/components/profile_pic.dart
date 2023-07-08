import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(text),
          ),
        ],
      ),
    );
  }
}