import 'package:burclaruygulamasi/burc_detay.dart';
import 'package:burclaruygulamasi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mytextstyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BurcDetay(
                  secilenBurc: listelenenBurc,
                ),
              ),
            );
          },
          leading: Image.asset(
            "images/" + listelenenBurc.burcKucukResim,
          ),
          title: Text(
            listelenenBurc.burcAdi,
            style: mytextstyle.headline6,
          ),
          subtitle: Text(
            listelenenBurc.burcTarihi,
            style: mytextstyle.subtitle1,
          ),
          trailing: const Icon(
            Icons.arrow_right_sharp,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
