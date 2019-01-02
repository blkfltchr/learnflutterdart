import 'package:flutter/material.dart';

import './products.dart';
import './auth.dart';

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('View products'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProductsPage()));
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AuthPage()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Manage products'),
      ),
      body: Center(
        child: Text('Manage your products'),
      ),
    );
  }
}
