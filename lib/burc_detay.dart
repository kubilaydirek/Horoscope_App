import 'package:burclaruygulamasi/model/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: true,
          expandedHeight: 250,
          pinned: true,
          backgroundColor: Colors.pink,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              secilenBurc.burcAdi + ' Burcu ve Özellikleri',
            ),
            background: Image.asset(
              'images/' + secilenBurc.burcBuyukResim,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Text(
                secilenBurc.burcDetayi,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
