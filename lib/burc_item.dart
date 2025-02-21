import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({super.key, required this.listelenenBurc});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListTile(
          // ignore: prefer_interpolation_to_compose_strings
          leading: Image.asset("images/" + listelenenBurc.burcKucukResim),
          title: Text(listelenenBurc.burcAdi, style: myTextStyle.headlineMedium,),
          subtitle: Text(listelenenBurc.burcTarihi, style: myTextStyle.titleSmall,),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
