import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ScaffoldOgesi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.redAccent.shade200,//arka plan rengi
      appBar: new AppBar(
        title: Text('My Fancy Dress'),//başlık
        actions: <Widget>[//burda olcak butonlar
        IconButton( //icon oluşturur sembol nasıl görüncek
          icon: Icon(Icons.playlist_add), 
          tooltip: 'Air it',
          onPressed: () => Navigator.pushNamed(context,"/ilksayfa"),//üstün ebasıldığında ne olsun
        ),
        IconButton(
          icon: Icon(Icons.playlist_add),
          tooltip: 'Restitch it',
          onPressed: () => print("Restitch it"),
        ),
        IconButton(
          icon: Icon(Icons.playlist_add_check),
          tooltip: 'Repair it',
          onPressed: () => print("Repair it"),
        ),
      ],
      ),
 
      body : new Center(
       child : new GridView.count(
          primary: false,
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,//kaç tane yan yana dizilcek
          children: <Widget>[
            new GestureDetector(
              onTap: () => Navigator.pushNamed(context,"/ilksayfa"),//tek tıklama buton yaptık
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:NetworkImage("https://cdn.pixabay.com/photo/2015/04/04/19/13/one-706897_960_720.jpg"),
                      fit: BoxFit.cover,
                    ),
                 ),
                  margin:EdgeInsets.all(5),
                  alignment: Alignment.bottomCenter,
                 child : Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0),
                    child:Container(
                      width: double.infinity,///tamamen kaplaması için
                     padding: EdgeInsets.all(8.0),
                     color:Color(0xCDFFFFFF),
                     child: new Text(
                        """Tek Tıklama İlk Sayfaya Git""",
                        textAlign: TextAlign.center,
                        style:TextStyle(
                       fontWeight: FontWeight.bold,
                       )
                     ),
                   ),
                  ),
                ),
              ),
            ),

            new GestureDetector(
              onDoubleTap: () {
                debugPrint("Gidiliyor");
                Navigator.pushNamed(context,"/imageviews");
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    //image: AssetImage("assets/images/lake.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                margin:EdgeInsets.all(5),
                alignment: Alignment.bottomCenter,
                child : Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skewY(0.0)..rotateZ(0),
                  child:Container(
                    width: double.infinity,///tamamen kaplaması için
                    padding: EdgeInsets.all(8.0),
                    color:Color(0xCDFFFFFF),
                    child : new Text(
                      """Çift Tıklama ImageViews Sayfasına Git""",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            
            new GestureDetector(
              onDoubleTap: () {
                debugPrint(" Dosya Gidiliyor");
                Navigator.pushNamed(context,"/dosyakonusu");
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    //image: AssetImage("assets/images/lake.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                margin:EdgeInsets.all(5),
                alignment: Alignment.bottomCenter,
                child : Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skewY(0.0)..rotateZ(0),
                  child:Container(
                    width: double.infinity,///tamamen kaplaması için
                    padding: EdgeInsets.all(8.0),
                    color:Color(0xCDFFFFFF),
                    child : new Text(
                      """Dosya İslemleri \n Sayfasına Git""",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),

            new GestureDetector(
              onDoubleTap: () {
                debugPrint("AlertView Gidiliyor");
                Navigator.pushNamed(context,"/alertvetextfield");
              },
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                     // image: AssetImage("assets/images/lake.jpeg"),
                      fit: BoxFit.cover,
                    ),
                 ),
                  margin:EdgeInsets.all(5),
                  alignment: Alignment.bottomCenter,
                  child : Transform(
                   alignment: Alignment.bottomCenter,
                   transform: Matrix4.skewY(0.0)..rotateZ(0),
                    child:Container(
                     width: double.infinity,///tamamen kaplaması için
                     padding: EdgeInsets.all(8.0),
                      color:Color(0xCDFFFFFF),
                      child : new Text(
                       """TextField Sayfasına Git""",
                       textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            new GestureDetector(
              onDoubleTap: () {
                debugPrint("Shared Sayfasına Gidiliyor");
                Navigator.pushNamed(context,"/shared");
              },
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      //image: AssetImage("assets/images/lake.jpeg"),
                      fit: BoxFit.cover,
                    ),
                 ),
                  margin:EdgeInsets.all(5),
                  alignment: Alignment.bottomCenter,
                  child : Transform(
                   alignment: Alignment.bottomCenter,
                   transform: Matrix4.skewY(0.0)..rotateZ(0),
                    child:Container(
                     width: double.infinity,///tamamen kaplaması için
                     padding: EdgeInsets.all(8.0),
                      color:Color(0xCDFFFFFF),
                      child : new Text(
                       """Shared Sayfasına Git""",
                       textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            new GestureDetector(
              onLongPress: () {
                Fluttertoast.showToast(
                  msg: "Bir defa tıkladınız:",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  //bgcolor:"#232323",
                  //textColor: "#FFFFFF"
                );
              },
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                   image: DecorationImage(
                      image:NetworkImage(
                       "https://equaleyes.com/blog/wp-content/uploads/2018/01/toast_massage-1022x1024.png"),
                     fit: BoxFit.cover,
                    ),
                 ),
                  margin:EdgeInsets.all(5),
                  alignment: Alignment.bottomCenter,
                  child : Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0),
                    child:Container(
                      width: double.infinity,///tamamen kaplaması için
                      padding: EdgeInsets.all(8.0),
                      color:Color(0xCDFFFFFF),
                      child : new Text(
                        """Toast Mesajı""",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
            new Container(
              color: Colors.green.shade500,
              margin:EdgeInsets.all(5),
              alignment: Alignment.center,
              child : new Text("Grid Eleman",textAlign: TextAlign.center,),
            ),

            new Container(
              color: Colors.green.shade500,
              margin:EdgeInsets.all(5),
              alignment: Alignment.center,
              child : new Text("Grid Eleman",textAlign: TextAlign.center,),
            ),
            
            new Container(
              color: Colors.green.shade500,
              margin:EdgeInsets.all(5),
              alignment: Alignment.center,
              child : new Text("Grid Eleman",textAlign: TextAlign.center,),
            ),
          ],
        )
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items :[
          new BottomNavigationBarItem(
            icon :new Icon(Icons.archive),
            title : new Text("Arşiv"),
          ),
          new BottomNavigationBarItem(
            icon :new Icon(Icons.assignment_late),
            title : new Text("Bilgilendirme"),
          ),
          new BottomNavigationBarItem(
            icon :new Icon(Icons.assessment),
            title : new Text("Degerlendirme"),
          ),
        ],
        onTap: (int i){
          switch (i) {
            case 0:
              debugPrint("Tıkladığın buton Arşiv");
              break;
            case 1:
              debugPrint("Tıkladığın buton Bilgilendirme");
              break;
            case 2:
              debugPrint("Tıkladığın buton Degerlendirme");
              break;
            default:
              debugPrint("Tıkladığın buton bulanamadı");
              break;
          }
        }
      ),
      drawer : new Drawer(//menü yapma
        child : new ListTile(
          leading: Icon(Icons.change_history),
          title: Text('Change history'),
          onTap: () {//tıklayınca ne olcak 
            Navigator.pop(context); // close the drawer
            debugPrint("Yan menüye tıkladın");
          },
        ),
      ),
    );
  }
}