import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar :AppBar(
        title: Text("Hello Sayfası"),
      ),
      body :Container(
      color: Colors.green,//en arka 
      alignment: Alignment.center,//alınanları merkeze yeleştir dedik
      child: new Container(//iç öge ekledik
        margin: EdgeInsets.all(20),//arka plandakinden uzaklığına 
        padding: EdgeInsets.all(15),//üste plandaki uzaklığı
        alignment: Alignment.center,
        color: Colors.blue,
        child: new Container(
          color: Colors.black,
          alignment: Alignment.center,
          /*child : new Row(//dikey sutünlar oluşturur
            mainAxisAlignment: MainAxisAlignment.start,//ögeler nerden başlasın center olsaydı ortada yazılırdı
            mainAxisSize: MainAxisSize.max,//
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.ltr,
            verticalDirection: VerticalDirection.down,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              new Container(
                alignment: Alignment.center,
                color: Colors.green.shade500,
                margin: EdgeInsets.all(5),
                child : new Text("Hola",textDirection: TextDirection.ltr,),

              ),
            ],
          ),*/
          child:Column(
            children: <Widget>[
                new Row(//dikey sutünlar oluşturur
                mainAxisAlignment: MainAxisAlignment.center,//ögeler nerden başlasın center olsaydı ortada yazılırdı
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                textDirection: TextDirection.ltr,
                verticalDirection: VerticalDirection.down,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                new Container(
                  alignment: Alignment.center,
                  color: Colors.green.shade500,
                  margin: EdgeInsets.all(5),
                  child : new Text("Hola",textDirection: TextDirection.ltr,),
                  ),
                  new Container(
                  alignment: Alignment.center,
                  color: Colors.green.shade500,
                  margin: EdgeInsets.all(5),
                  child : new Text("Hola",textDirection: TextDirection.ltr,),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    ),
    );
  }
}