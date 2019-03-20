import 'package:flutter/material.dart';
/*
class extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateful Konusu",
      theme: new ThemeData(
        primaryColor: Colors.red//arka fooon yukarısı
      ),
      home: new HomePage(),
    );
  }
}*/

class DegisenWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyPageState();
}
class MyPageState extends State<DegisenWidget>{
  int degisenSayi=0;
  void sayiyiArtir(){
    setState(() {
      degisenSayi++;
    });
  }
  void sayiyiAzalt(){
    setState(() {
      degisenSayi--; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar :AppBar(
        title: Text("Stateful-Stateless Dersi"),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("Sayıyı arttır",textDirection : TextDirection.ltr,style: TextStyle(fontSize: 20),),
              onPressed: sayiyiArtir,
            ),
            Text(
              "Degisen sayı $degisenSayi",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 20,
                color: degisenSayi > 0 ? Colors.green : Colors.red //if
              ),
            ),
            FlatButton(
              child:Text("Sayi azalt"),
              onPressed: sayiyiAzalt,
            ),
          ],
        ),
      ),
    );
  }
}