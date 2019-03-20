import 'package:flutter/material.dart';

class AlertVeTextField extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => AlertState();
  
}

class AlertState extends State<AlertVeTextField>{

  final yaziKontrolcusu = TextEditingController();
  final genelKontrolcu = GlobalKey<FormState>();

  @override
  void dispose() {//uygulama kapnadığı yazaman kontrolcude kapansın
    yaziKontrolcusu.dispose();
    super.dispose();
  }

  void selamla(){
    if(genelKontrolcu.currentState.validate()){//herhangi bir sorun yoksa
      showDialog(
        context: context,
        barrierDismissible: false, //açılan küçük sayfa kapanma yolu sadece tıklamak mı???
        builder: (context){
          return AlertDialog(
            title:Text("Selamla MEtini"),
            content :SingleChildScrollView(//aşşağıya doğru kayma kısmı
              child: ListBody(
                children: <Widget>[
                  Text("Merhaba ${yaziKontrolcusu.text}"),
                  Text("Sizi Sistem Adına Selamladım",)
                ],
              ),
            ),
            actions: <Widget>[//eklenecek butonlar
              FlatButton(
                child: Text("Tamam"),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (title : Text("TextField ve AlertView Kullanımı"),
      ),
      body: Form(
        key:genelKontrolcu ,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                validator: (yazi){
                  if(yazi.isEmpty){//boş mu diye kontrol etti
                    return "Lütfen bu kısmı boş bırakma";
                  }
                },
                controller: yaziKontrolcusu,
                decoration: InputDecoration(hintText: "İsim"),//isim girmye başlandı
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child:RaisedButton(//buton kısmı
                  color :Colors.orange,
                  child:Text(
                    "Selamla",
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ), onPressed: selamla,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}