import 'package:flutter/material.dart';

class ImageViews extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Image Kullanımı"),
      ),
      body:ListView(//bu kısım sayfanın aşşağı yukarı oynuyor olması
        children: <Widget>[
          Text(
            "Asset Kılasördeki Resmi Kulanma",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,//yazım nerde olsun merkezde olsun
          ),
          //Image.asset("assets/images/lake.jpeg"),
          Text(
            "İnternetteki Resmi Kulanma",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,//yazım nerde olsun merkezde olsun
          ),
         // Image.network("https://cdn.pixabay.com/photo/2015/04/04/19/13/one-706897_960_720.jpg"),
        ],
      ),
    );
  }
}