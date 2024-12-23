/*import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/pages/login.dart';
import 'package:shop/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List categories = [
    "images/headphone_icon.png",
    "images/laptop.png",
    "images/TV.png",
    "images/watch.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 15, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      child: Icon(Icons.arrow_back),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                      }),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Hey JB",
                        style: AppWidget.boldTextFeildStyle(),
                      ),
                      Text(
                        "Bonjour",
                        style: AppWidget.lightTextFeildStyle(),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "images/boy.jpg",
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Chercher un produit",
                      hintStyle: AppWidget.lightTextFeildStyle(),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: AppWidget.semiBoldFeildStyle(),
                  ),
                  Text(
                    "Tous",
                    style: TextStyle(
                        color: Color(0xFFfd6F3e),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 130,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFFFD6F3E),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.zero,
                      height: 130,
                      child: ListView.builder(
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoryTitle(image: categories[index]);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Produits",
                    style: AppWidget.semiBoldFeildStyle(),
                  ),
                  Text(
                    "Tous",
                    style: TextStyle(
                        color: Color(0xFFfd6F3e),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 240,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        Image.asset(
                          "images/headphone2.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Headphone',
                          style: AppWidget.semiBoldFeildStyle(),
                        ),
                        Row(
                          children: [
                            Text(
                              "100\F",
                              style: TextStyle(
                                  color: Color(0xFFfd6F3e),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: Color(0xFFfd6F3e),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ))
                          ],
                        )
                      ]),
                    ),
                    //Fin premier produit
                    //Deuxieme produit
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        Image.asset(
                          "images/watch2.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Applee Watch',
                          style: AppWidget.semiBoldFeildStyle(),
                        ),
                        Row(
                          children: [
                            Text(
                              "500\F",
                              style: TextStyle(
                                  color: Color(0xFFfd6F3e),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: Color(0xFFfd6F3e),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ))
                          ],
                        )
                      ]),
                    ),
                    // Troixiem produit
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        Image.asset(
                          "images/laptop.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Laptop',
                          style: AppWidget.semiBoldFeildStyle(),
                        ),
                        Row(
                          children: [
                            Text(
                              "1000\F",
                              style: TextStyle(
                                  color: Color(0xFFfd6F3e),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: Color(0xFFfd6F3e),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ))
                          ],
                        )
                      ]),
                    ),
                    //Fin Troixieme produit
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String image;
  CategoryTitle({required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        height: 90,
        width: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:shop/pages/login.dart';
import 'package:shop/widget/support_widget.dart';
import 'package:shop/main.dart'; 
import 'package:shop/pages/cart_items.dart';// Importez là où vous avez défini la liste globale `cartItems`.

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> products = [
    {
      "name": "Headphone",
      "image": "images/headphone2.png",
      "price": 100,
    },
    {
      "name": "Apple Watch",
      "image": "images/watch2.png",
      "price": 500,
    },
    {
      "name": "Laptop",
      "image": "images/laptop.png",
      "price": 1000,
    },
  ];

  void addToCart(Map<String, dynamic> product) {
    setState(() {
      cartItems.add(product); // Ajouter le produit dans la liste globale
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product["name"]} ajouté au panier'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 15, right: 20),
          child: Column(
            children: [
              // (Entête, barre de recherche, catégories, etc. restent inchangées)

              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Produits",
                    style: AppWidget.semiBoldFeildStyle(),
                  ),
                  Text(
                    "Tous",
                    style: TextStyle(
                      color: Color(0xFFfd6F3e),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 240,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            product['image'],
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            product['name'],
                            style: AppWidget.semiBoldFeildStyle(),
                          ),
                          Row(
                            children: [
                              Text(
                                "${product['price']} F",
                                style: TextStyle(
                                  color: Color(0xFFfd6F3e),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 35),
                              GestureDetector(
                                onTap: () => addToCart(product),
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFfd6F3e),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
/*
import 'package:flutter/material.dart';
import 'package:shop/pages/login.dart';
import 'package:shop/widget/support_widget.dart';
import 'package:shop/main.dart'; // Importez là où vous avez défini la liste globale `cartItems`.
import 'package:shop/pages/cart_items.dart'; // Importez là où vous avez défini la liste globale `cartItems`.

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List categories = [
    "images/headphone_icon.png",
    "images/laptop.png",
    "images/TV.png",
    "images/watch.png",
  ];

  List<Map<String, dynamic>> products = [
    {
      "name": "Headphone",
      "image": "images/headphone2.png",
      "price": 100,
    },
    {
      "name": "Apple Watch",
      "image": "images/watch2.png",
      "price": 500,
    },
    {
      "name": "Laptop",
      "image": "images/laptop.png",
      "price": 1000,
    },
  ];

  void addToCart(Map<String, dynamic> product) {
    setState(() {
      cartItems.add(product); // Ajouter le produit dans la liste globale
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product["name"]} ajouté au panier'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 15, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      child: Icon(Icons.arrow_back),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                      }),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Hey JB",
                        style: AppWidget.boldTextFeildStyle(),
                      ),
                      Text(
                        "Bonjour",
                        style: AppWidget.lightTextFeildStyle(),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "images/boy.jpg",
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Chercher un produit",
                      hintStyle: AppWidget.lightTextFeildStyle(),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: AppWidget.semiBoldFeildStyle(),
                  ),
                  Text(
                    "Tous",
                    style: TextStyle(
                        color: Color(0xFFfd6F3e),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 130,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFFFD6F3E),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.zero,
                      height: 130,
                      child: ListView.builder(
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoryTitle(image: categories[index]);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Produits",
                    style: AppWidget.semiBoldFeildStyle(),
                  ),
                  Text(
                    "Tous",
                    style: TextStyle(
                        color: Color(0xFFfd6F3e),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 240,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            product['image'],
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            product['name'],
                            style: AppWidget.semiBoldFeildStyle(),
                          ),
                          Row(
                            children: [
                              Text(
                                "${product['price']} F",
                                style: TextStyle(
                                  color: Color(0xFFfd6F3e),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 35),
                              GestureDetector(
                                onTap: () => addToCart(product),
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFfd6F3e),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String image;
  CategoryTitle({required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        height: 90,
        width: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:shop/pages/login.dart';
import 'package:shop/widget/support_widget.dart';
import 'package:shop/main.dart'; // Importez là où vous avez défini la liste globale `cartItems`.
import 'package:shop/pages/cart_items.dart'; // Importez là où vous avez défini la liste globale `cartItems`.

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List categories = [
    "images/headphone_icon.png",
    "images/laptop.png",
    "images/TV.png",
    "images/watch.png",
  ];

  List<Map<String, dynamic>> products = [
    {
      "name": "Headphone",
      "image": "images/headphone2.png",
      "price": 100,
    },
    {
      "name": "Apple Watch",
      "image": "images/watch2.png",
      "price": 500,
    },
    {
      "name": "Laptop",
      "image": "images/laptop.png",
      "price": 1000,
    },
  ];

  List<Map<String, dynamic>> filteredProducts = [];

  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredProducts =
        products; // Initialement, tous les produits sont affichés
    _searchController
        .addListener(_filterProducts); // Ajouter un listener pour la recherche
  }

  void addToCart(Map<String, dynamic> product) {
    setState(() {
      cartItems.add(product); // Ajouter le produit dans la liste globale
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${product["name"]} ajouté au panier'),
      ),
    );
  }

  void _filterProducts() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      filteredProducts = products
          .where((product) => product['name'].toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 15, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      child: Icon(Icons.arrow_back),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                      }),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Hey JB",
                        style: AppWidget.boldTextFeildStyle(),
                      ),
                      Text(
                        "Bonjour",
                        style: AppWidget.lightTextFeildStyle(),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "images/boy.jpg",
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  controller:
                      _searchController, // Utilisation du contrôleur de texte
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Chercher un produit",
                      hintStyle: AppWidget.lightTextFeildStyle(),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: AppWidget.semiBoldFeildStyle(),
                  ),
                  Text(
                    "Tous",
                    style: TextStyle(
                        color: Color(0xFFfd6F3e),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 130,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFFFD6F3E),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.zero,
                      height: 130,
                      child: ListView.builder(
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoryTitle(image: categories[index]);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Produits",
                    style: AppWidget.semiBoldFeildStyle(),
                  ),
                  Text(
                    "Tous",
                    style: TextStyle(
                        color: Color(0xFFfd6F3e),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 240,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: filteredProducts
                      .length, // Utilisation des produits filtrés
                  itemBuilder: (context, index) {
                    final product = filteredProducts[index];
                    return Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            product['image'],
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            product['name'],
                            style: AppWidget.semiBoldFeildStyle(),
                          ),
                          Row(
                            children: [
                              Text(
                                "${product['price']} F",
                                style: TextStyle(
                                  color: Color(0xFFfd6F3e),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 35),
                              GestureDetector(
                                onTap: () => addToCart(product),
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFfd6F3e),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String image;
  CategoryTitle({required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        height: 90,
        width: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
