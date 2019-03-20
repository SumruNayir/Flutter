import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Shared extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SharedState();

}

class SharedState extends State<Shared> {
  
  final isimCtrl  =TextEditingController();
  final soyisimCtrl =TextEditingController();
  final genelCtrl =GlobalKey<FormState>();

  String isimStr = "";
  String soyisimStr = "";
  bool kayitDurumu = false;
  int kayitNo = 0;

  @override
  void dispose() {
    isimCtrl.dispose();
    soyisimCtrl.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void kayitYap(String gisim ,String gsoyisim) async {
    final kayitAraci = await SharedPreferences.getInstance();
    if(genelCtrl.currentState.validate()) {
      kayitAraci.setBool("durum", true);
      kayitAraci.setInt("kayit_no", 1);
      kayitAraci.setString("isim", gisim);
      kayitAraci.setString("soyisim", gsoyisim);
      Fluttertoast.showToast(
        msg: "Kayıt basarılı",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }
  void kayitGoster() async{
    final kayitAraci = await SharedPreferences.getInstance();

    bool kDurum =kayitAraci.getBool("durum");
    int kNo =kayitAraci.getInt("kayitno");

    String kIsim =kayitAraci.getString("isim");
    String kSoyisim =kayitAraci.getString("soyisim");

    setState(() {
     kayitDurumu = kDurum;
     kayitNo =kNo;
     isimStr =kIsim;
     soyisimStr =kSoyisim; 
    });
    Fluttertoast.showToast(
        msg: "Kayıt basarılı",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
    );
  }
  void kayitSil() async{
    final kayitAraci = await SharedPreferences.getInstance();
    //tüm ayıtları silmek içim .clear
    //istediğimiz kayıt araçlarını silmek için .remove
    kayitAraci.remove("durum");
    kayitAraci.remove("kayitno");
    kayitAraci.remove("isim");
    kayitAraci.remove("soyisim");

    Fluttertoast.showToast(
        msg: "Kayıt basarılı",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences Kullanımı"),
      ),
      body:Form(
        key:genelCtrl,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                validator: (deger){
                  if(deger.isEmpty){
                    return "İsmini yaz";
                  }
                },
                controller: isimCtrl,
                decoration: InputDecoration(hintText: "İsmini Gir"),
              ),
              TextFormField(
                validator: (deger){
                  if(deger.isEmpty){
                    return "Soyismini yaz";
                  }
                },
                controller: soyisimCtrl,
                decoration: InputDecoration(hintText: "Soyismini Gir"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color:  Colors.green,
                        child: Text(
                          "Kaydet",
                          style:TextStyle(color : Colors.pink),
                        ),
                        onPressed: () => kayitYap(isimCtrl.text ,soyisimCtrl.text),
                      ),
                    ),
                  ),

                 Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color:  Colors.blue,
                      child: Text(
                        "Getir",
                        style:TextStyle(color : Colors.pink),
                      ),
                      onPressed: () => kayitGoster(),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        color:  Colors.red,
                        child: Text(
                          "Sil",
                          style:TextStyle(color : Colors.pink),
                        ),
                        onPressed: () => kayitSil()
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("İsim: "+isimStr),
                      Text("Soyisim: "+soyisimStr),
                      Text("Kayıt Durumu: "),
                      Text("Kayıt Numarası: "),
                    ],
                  )
                ),
              )
            ],
          ),
        ),
      )
    );
  }
  
}
