import 'package:flutter/material.dart';
import 'package:worldtracker/services/word_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Casablanca',flag: 'germany.png',url:'Africa/Casablanca');
    await instance.getTime();
  /*  Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location': instance.location,
      'flag' : instance.flag,
      'time': instance.time,
      'isDaytime' : instance.isDayTime,
    });*/
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitWave(
          color: Colors.white,
          size: 60.0,
        ),
      ),
    );
  }
}
