import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductList(),
    );
  }
}

class ProductList extends StatefulWidget {
  @override
  ProductListState createState() => ProductListState();
}

class ProductListState extends State<ProductList> {
  List<Product> products = [
    Product(name: "Product 1", price: 100),
    Product(name: "Product 2", price: 50),
    Product(name: "Product 3", price: 130),
    Product(name: "Product 4", price: 35),
    Product(name: "Product 5", price: 550),
    Product(name: "Product 6", price: 30),
    Product(name: "Product 7", price: 270),
    Product(name: "Product 8", price: 90),
    Product(name: "Product 9", price: 200),
    Product(name: "Product 10", price: 120),
    Product(name: "Product 11", price: 45),
    Product(name: "Product 12", price: 60),
    Product(name: "Product 13", price: 30),
    Product(name: "Product 14", price: 500),
    Product(name: "Product 15", price: 770),
    Product(name: "Product 16", price: 400),
    Product(name: "Product 17", price: 1000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CartPage(products: products)),
          );
        },child: Icon(Icons.shopping_cart),
      ),
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 670,
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductItem(product: products[index]);
              },
            ),
          ),

        ],
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  int count = 0;

  Product({required this.name, required this.price});
}

class ProductItem extends StatefulWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  ProductItemState createState() => ProductItemState();
}

class ProductItemState extends State<ProductItem> {
  void buyProduct() {
    setState(() {
      widget.product.count++;
      if (widget.product.count >= 5) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Congratulations!"),
              content: Text("You've bought 5 ${widget.product.name}!"),
              actions: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK"),
                ),
              ],
            );
          },
        );
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.product.name),
      subtitle: Text("\$${widget.product.price.toStringAsFixed(2)}"),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Count: ${widget.product.count}"),
          SizedBox(width: 10),
          ElevatedButton(
            onPressed: buyProduct,
            child: Text("Buy Now"),
          ),
        ],
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final List<Product> products;

  CartPage({required this.products});

  int getTotalCount() {
    int totalCount = 0;
    for (var product in products) {
      totalCount += product.count;
    }
    return totalCount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Page"),
      ),
      body: Center(
        child: Text("Total Products Bought: ${getTotalCount()}"),
      ),
    );
  }
}
