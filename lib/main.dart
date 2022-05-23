//import 'dart:js';
import 'package:flutter/services.dart';
//import 'dart:html';


import 'package:flutter/material.dart';
import 'package:aid_scale/pages/home.dart';
import 'package:aid_scale/pages/loading.dart';
import 'package:aid_scale/pages/login.dart';
import 'package:aid_scale/pages/statistics.dart';
import 'package:aid_scale/pages/worker.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp( MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => LoginDemo(),//Loading(),
      '/login': (context) => LoginDemo(),
      '/home': (context) => Home(),
      '/Statistics': (context) => Statistics(),
      '/home/worker' : (context) => Worker(),
    },
  ));
}
