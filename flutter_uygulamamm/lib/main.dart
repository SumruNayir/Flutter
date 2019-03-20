import 'package:flutter/material.dart';
import 'package:ilk_flutter_uygulamam/arayuz/alertvetext.dart';
import 'package:ilk_flutter_uygulamam/arayuz/degiskenwigdet.dart';
import 'package:ilk_flutter_uygulamam/arayuz/imageviews.dart';
import 'package:ilk_flutter_uygulamam/arayuz/shared.dart';
import 'arayuz/ilksayfa.dart';
import 'arayuz/hello.dart';
import './arayuz/scaffolld.dart';
import './arayuz/scaffolld.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => ScaffoldOgesi(),///ilk sayfa buradan açılcak
        "/ilksayfa" : (context) => Ilksayfa(title: " İlk sayfam"),
        "hello" :(context) => Hello(),
        "/degisenwidget" : (context) => DegisenWidget(),
        "/imageviews" : (context) => ImageViews (),
        "/alertvetextfield" : (context) => AlertVeTextField(),
        "/shared" : (context) => Shared(),
      }
    ),
  );
}