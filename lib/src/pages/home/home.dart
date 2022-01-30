import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/constants/assets_path.dart';
import 'package:flutter_ecommerce_app/src/models/product_model.dart';
import 'package:flutter_ecommerce_app/src/themes/styles.dart';
import 'package:flutter_ecommerce_app/src/widgets/my_app_bar.dart';
import 'package:flutter_ecommerce_app/src/widgets/product_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _color = Theme.of(context).primaryColor;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            text: 'SHOPPING ',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                text: 'APP',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        actions: const [
          Icon(CupertinoIcons.search),
          SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: screenWidth - kToolbarHeight - 32,
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(kPadding),
                child: Image.asset(PRODUCT_00),
              ),
            ),
/* ------------------------------ New Arrivals ------------------------------ */
            ListTile(
              title: const Text.rich(
                TextSpan(
                  text: 'New ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Arrivals',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'See more',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    CupertinoIcons.arrow_right,
                    size: 16,
                  )
                ],
              ),
            ),
            // ProductCard
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ProductCard(
                      model: productList[0],
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ProductCard(
                      model: productList[1],
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),

/* ------------------------------ Popular Items ----------------------------- */
            ListTile(
              title: const Text.rich(
                TextSpan(
                  text: 'Popular ',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Items',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'See more',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    CupertinoIcons.arrow_right,
                    size: 16,
                  )
                ],
              ),
            ),
            // ProductCard
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ProductCard(
                      model: productList[2],
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: ProductCard(
                      model: productList[3],
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
