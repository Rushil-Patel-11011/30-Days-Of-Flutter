import 'package:firest_app_yt/widgets/home_widgets/add_to_cart.dart';
import 'package:firest_app_yt/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:firest_app_yt/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              AddToCart(catalog: catalog,)
                  .wh(120, 50)
            ]).p20(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(children: [
                    catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                    "Est diam sanctus et sit no sed, takimata ipsum ut rebum duo vero sit dolore ipsum kasd.takimata ipsum ut rebum duo vero sit dolore ipsum kasd.takimata ipsum ut rebum duo vero sit dolore ipsum kasd.takimata ipsum ut rebum duo vero sit dolore ipsum kasd. Invidunt consetetur clita"
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p16()
                  ]).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
