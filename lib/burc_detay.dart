import 'package:flutter/material.dart';
import 'package:flutter_ilk_proje/model/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({super.key, required this.secilenBurc});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarReng = Colors.transparent;
  late PaletteGenerator _generator;

  void appbarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/' + widget.secilenBurc.burcBuyukResim));

        appBarReng = _generator.dominantColor!.color;
        
        setState(() {
          
        });
  }

  @override
  void initState() {
    super.initState();
    appbarRenginiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appBarReng,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("${widget.secilenBurc.burcAdi} Burcu ve Özellikleri",
              style:TextStyle(color: Colors.white)),
              centerTitle: true,
              background:
                  Image.asset('images/${widget.secilenBurc.burcBuyukResim}'),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                widget.secilenBurc.burcDetayi,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
