import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/models/product_model.dart';
import 'package:flutter_ecommerce_app/src/themes/styles.dart';
import 'package:flutter_ecommerce_app/src/widgets/my_app_bar.dart';
import 'package:flutter_ecommerce_app/src/widgets/product_card.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int currentValue = 0;

  @override
  Widget build(BuildContext context) {
    Map<int, Widget> children = <int, Widget>{
      0: Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          'All',
          style:
              TextStyle(color: currentValue == 0 ? Colors.black : Colors.grey),
        ),
      ),
      1: Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          'New',
          style:
              TextStyle(color: currentValue == 1 ? Colors.black : Colors.grey),
        ),
      ),
      2: Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          'Popular',
          style:
              TextStyle(color: currentValue == 2 ? Colors.black : Colors.grey),
        ),
      ),
    };

    return Scaffold(
      appBar: const PreferredSize(
        child: MyAppBar(
          title: 'Our',
          subTitle: 'Products',
          action: [
            Icon(CupertinoIcons.search),
            SizedBox(width: 8),
          ],
        ),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: CupertinoSlidingSegmentedControl<int>(
              children: children,
              onValueChanged: (int? newValue) {
                setState(() {
                  currentValue = newValue!;
                });
              },
              groupValue: currentValue,
              thumbColor: CupertinoColors.systemGrey6,
              backgroundColor: CupertinoColors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.57,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                ProductModel item = productList[index];
                return ProductCard(
                  model: item,
                  onPressed: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
