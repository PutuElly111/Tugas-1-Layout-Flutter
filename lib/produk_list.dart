import 'package:flutter/material.dart';
import './detailproduk.dart';

class Produklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "ACER",
                    description: "Ini Laptop ACer Canggih",
                    price: 1000,
                    image: "acer.jpg",
                    star: 1,
                  ),
                ));
              },
              child: ProductBox(
                  name: "ACER",
                  description: "Ini Laptop ACer Canggih",
                  price: 1000,
                  image: "acer.jpg",
                  star: 1),
            ),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Adventors",
                      description: "Pixel is most featureful phone ever",
                      price: 800,
                      image: "adventors.jpg",
                      star: 4,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Adventors",
                    description: "Pixel is most featureful phone ever",
                    price: 800,
                    image: "adventors.jpg",
                    star: 4)),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "ASUS",
                      description: "Laptop is most productive development tool",
                      price: 2000,
                      image: "asus_1.jpg",
                      star: 3,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "ASUS",
                    description: "Laptop is most productive development tool",
                    price: 2000,
                    image: "asus_1.jpg",
                    star: 3)),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "MAcbook",
                      description: "Laptop is most productive development tool",
                      price: 1500,
                      image: "macbook_air.jpg",
                      star: 3,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "MAcbook",
                    description: "Laptop is most productive development tool",
                    price: 1500,
                    image: "macbook_air.jpg",
                    star: 3)),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "SAMSUNG",
                    description: "Laptop is most productive development tool",
                    price: 100,
                    image: "samsung.jpg",
                    star: 5,
                  ),
                ));
              },
              child: ProductBox(
                name: "SAMSUNG",
                description: "Laptop is most productive development tool",
                price: 100,
                image: "samsung.jpg",
                star: 5,
              ),
            ),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
        Image.asset(
          "images/" + image,
          width: 150,
        ),
        Expanded(
            child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text(this.description),
                    Text(
                      "Price :" + this.price.toString(),
                      style: TextStyle(color: Colors.red),
                    ),
                    Row(
                      children: <Widget>[
                        Row(
                          children: children,
                        )
                      ],
                    )
                  ],
                )))
      ])),
    );
  }
}
