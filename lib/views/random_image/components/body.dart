import 'dart:developer';

import 'package:fininfocom/model/dogImage.dart';
import 'package:fininfocom/network/service.dart';
import 'package:fininfocom/views/home/components/mybutton.dart';
import 'package:flutter/material.dart';


class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}


class _BodyState extends State<Body> {
  late Future<DogImage> dogimage;
  @override
  void initState() {
    dogimage=Services.fetchData();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: FutureBuilder<DogImage>(
          future: dogimage,
          builder: (context, snapshot){
            if(snapshot.hasData && snapshot.data!.status=='success'){
              log(snapshot.data!.message);
              return
                Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom:30,
                        top:100),

                    child:Image(image: NetworkImage(snapshot.data!.message)
                        ,fit:BoxFit.fill ,
                        height: 260.0, width: 200.0),
                  ),
                  SizedBox(height: 10,),

                  MyButton(
                    iconData: Icons.airplane_ticket_rounded,
                    buttonText: 'Random Dog Image',
                    onTap: ()async{
                      // Services().fetchData();
                      setState(() {
                        dogimage=Services.fetchData();
                        log("setState ${snapshot.data!.message}");
                        // dogimage = DogImage(message: snapshot.data!.message, status: snapshot.data!.status);
                      });
                    },
                  ),

                  SizedBox(
                    height: 20,
                  ),
                ],

              );
              // return Text(snapshot.data!.status);
            }else if(snapshot.hasError){
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          }
        )
      ),
    );
  }
}