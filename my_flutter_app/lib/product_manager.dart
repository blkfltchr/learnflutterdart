import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct) {
    print('[Product manager state] constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[Product manager state] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
    void initState() {
      print('[Product manager state] initState()');
      super.initState();
      _products.add(widget.startingProduct);
    }

  @override
    void didUpdateWidget(ProductManager oldWidget) {
      print('[Product manager state] didUpdateWidget()');
      super.didUpdateWidget(oldWidget);
    }

  @override
  Widget build(BuildContext context) {
    print('[Product manager state] build()');
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('Advanced food tester');
              });
            },
            child: Text('Add product')),
      ),
      Products(_products)
    ]);
  }
}
