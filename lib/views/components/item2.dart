import 'package:crypto/views/select_coin.dart';
import 'package:flutter/material.dart';

class Item2 extends StatelessWidget {
  var item;
  Item2({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return SelectCoin(selectItem: item,);
        }));
      },
      child: Container(
        padding: EdgeInsets.only(
          left: myWidth * 0.03,
          right: myWidth * 0.06,
          top: myHeight * 0.02,
          bottom: myHeight * 0.02,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: myWidth * 0.03,
          vertical: myHeight * 0.015,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: myHeight * 0.03,
              child: Image.network(item.image),
            ),
            SizedBox(
              height: myHeight * 0.015,
            ),
            Text(
              item.id,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: myHeight * 0.01,
            ),
            Row(
              children: [
                Text(
                  item.priceChange24H.toString().contains("-")
                      ? "-\$${item.priceChange24H.toStringAsFixed(2).toString().replaceAll("-", "")}"
                      : "\$${item.priceChange24H.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: myWidth * 0.02,
                ),
                Text(
                  "${item.marketCapChangePercentage24H.toStringAsFixed(2)}%",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    // color: Colors.grey,
                    color: item.marketCapChangePercentage24H >= 0
                        ? Colors.green
                        : Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
