import 'package:flutter/material.dart';

import 'model/burc.dart';
class BurcItem extends StatelessWidget {
  final Burc listenenBurc;
  const BurcItem({required this.listenenBurc,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListTile(
          leading: Image.asset("images/"+listenenBurc.burcKucukResim),
          title: Text(listenenBurc.burcAdi, style: myTextStyle.headline5,),
          subtitle: Text(listenenBurc.burcTarihi, style: myTextStyle.subtitle1,),
          trailing: Icon(Icons.arrow_forward_ios,
          color: Colors.pink,),
        ),
      ),
    );
  }
}
