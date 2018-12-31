import 'package:flutter/material.dart';

import './pages/product.dart'; 

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(),),),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCards = Center(
      child: Text('No products found...'),
    );
    if (products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }
    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}

// Conditional rendering v1
//
// Widget build(BuildContext context) {
//     return products.length > 0
//         ? ListView.builder(
//             itemBuilder: _buildProductItem,
//             itemCount: products.length,
//           )
//         : Center(
//             child: Text('No products found...'),
//           );
//   }

// Conditional rendering v2
//
// Widget build(BuildContext context) {
//     Widget productCard = Center(
//       child: Text('No products found...'),
//     );
//     if (products.length > 0) {
//       productCard = ListView.builder(
//         itemBuilder: _buildProductItem,
//         itemCount: products.length,
//       );
//     }
//     return productCard;
//   }
