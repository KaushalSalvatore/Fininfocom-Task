import 'dart:developer';
import 'dart:io';

import 'package:fininfocom/model/userprofile.dart';
import 'package:fininfocom/network/service.dart';
import 'package:fininfocom/views/profile/components/profile_details.dart';
import 'package:fininfocom/views/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late Future<UserProfile> userDetails;

  @override
  void initState() {
    super.initState();
    userDetails = Services.fetchUserData() ;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: FutureBuilder<UserProfile>(
              future: userDetails,
              builder: (context, snapshot){
                if(snapshot.hasData){
                  return SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        ProfilePic(text: '${snapshot.data?.results?.first?.picture?.medium}'),
                        SizedBox(height: 10),
                        ProfileMenu(
                          text: '   Name : ${snapshot.data?.results?.first?.name?.first} ${snapshot.data?.results?.first?.name?.last}',
                          iconData: Icons.man,
                          press: () => {},
                        ),
                        ProfileMenu(
                          text: '   Location : ${snapshot.data?.results?.first.location?.city} '
                              '${snapshot.data?.results?.first.location?.state} '
                              '${snapshot.data?.results?.first.location?.country} '
                              '${snapshot.data?.results?.first?.location?.postcode} ',

                          iconData: Icons.location_on_sharp,
                          press: () => {},
                        ),
                        ProfileMenu(
                          text: '   Email : ${snapshot.data?.results?.first?.email} ',
                          iconData: Icons.email,
                          press: () => {},
                        ),
                        ProfileMenu(
                          text: '   DOB : ${snapshot.data?.results?.first?.dob?.date?.substring(0, snapshot.data?.results?.first?.dob?.date?.indexOf('T'))} ',
                          iconData: Icons.calendar_month,
                          press: () => {},
                        ),
                        ProfileMenu(
                          text: '   Register date : ${snapshot.data?.results?.first?.registered?.date?.substring(0, snapshot.data?.results?.first?.registered?.date?.indexOf('T'))} ',
                          iconData: Icons.calendar_month,
                          press: () => {},
                        ),
                      ],
                    ),
                  );
                  // return Text(snapshot.data!.status);
                }else if(snapshot.hasError){
                  log('${snapshot.error}');
                  return Text('${snapshot.error}');

                }
                return const CircularProgressIndicator();
              }
          )

      ),
    );
  }
}

