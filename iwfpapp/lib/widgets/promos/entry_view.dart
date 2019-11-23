import 'package:flutter/material.dart';
import 'package:iwfpapp/services/cashback_promo.dart';

class PromoEntry extends StatelessWidget {
  final CashbackPromo promo;
  const PromoEntry(this.promo);
  @override
  Widget build(BuildContext context) {
    double maxContainerWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
      width: maxContainerWidth,
      child: Material(
        color: Colors.cyan[100],
        child: Card(
            color: Colors.cyan,
            child: Column(
              children: <Widget>[
                Text('Promotion Name: ' + promo.name,
                    style: TextStyle(color: Colors.white)),
                Text('Promotion ID: ' + promo.id,
                    style: TextStyle(color: Colors.white)),
                Text('Promotion Type' + promo.type,
                    style: TextStyle(color: Colors.white)),
                Text('Promotion Duration: ' + promo.start + '~' + promo.end,
                    style: TextStyle(color: Colors.white)),
                Text('Promotion Repeat Pattern: ' + promo.repeat,
                    style: TextStyle(color: Colors.white)),
                Text('Promotion Cashback Rate: ' + promo.rate.toString() + '%',
                    style: TextStyle(color: Colors.white)),
                Text('Promotion Target Name: ' + promo.category.name,
                    style: TextStyle(color: Colors.white)),
                Text('Promotion Target ID: ' + promo.category.id,
                    style: TextStyle(color: Colors.white)),
                RaisedButton(
                  color: Colors.redAccent,
                  onPressed: () {},
                  child: Text('Remove', style: TextStyle(color: Colors.white)),
                )
              ],
            )),
      ),
    );
  }
}