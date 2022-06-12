import 'package:burc_rehberi/burc_item.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:flutter/material.dart';

import 'model/burc.dart';
class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi(){
    tumBurclar = veriKaynagi();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burçlar Listesi"),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context,index){
          return BurcItem(listenenBurc: tumBurclar[index],);
        },itemCount: tumBurclar.length,),
      ),
    );
  }

  List<Burc> veriKaynagi() {
    List<Burc> gecici = [];
    for(int i = 0 ; i <12 ; i++){
      var ad = Strings.BURC_ADLARI[i];
      var tarih = Strings.BURC_TARIHLERI[i];
      var detay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var kucukResim = Strings.BURC_ADLARI[i].toLowerCase() + '${i+1}.png';
      var buyukResim = Strings.BURC_ADLARI[i].toLowerCase() + 'buyuk${i+1}.png';

      Burc eklenecekBurc = Burc(ad, tarih, detay, kucukResim, buyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
