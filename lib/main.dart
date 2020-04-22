import 'package:flutter/material.dart';
import 'package:worldtracker/pages/choose_location.dart';
import 'package:worldtracker/pages/home.dart';
import 'package:worldtracker/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) =>Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));

