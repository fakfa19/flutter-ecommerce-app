import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/models/product_model.dart';
import 'package:flutter_ecommerce_app/src/utils/useful_function.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
    required this.model,
    this.onPressed,
  }) : super(key: key);

  final ProductModel model;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(model.image),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        model.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            dollarPrice(model.price),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children:  <Widget>[
                              Icon(
                                CupertinoIcons.minus_circle,
                                color: Colors.blue.shade300,
                                size: 28,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '1',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Icon(
                                CupertinoIcons.add_circled,
                                color: Colors.amber,
                                size: 28,
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
