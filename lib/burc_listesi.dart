
import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar ;

  BurcListesi(){
    tumBurclar = veriKaynaginiHazirla();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burçlar Listesi"),
        backgroundColor: Colors.pink,
      ),
      body:  Center(
      child:  Text("Burc Listesi Buraya Gelecek"),
    )
      );
  }
}

List<Burc> veriKaynaginiHazirla() {
  List<Burc> gecici = [];
  return gecici;
}