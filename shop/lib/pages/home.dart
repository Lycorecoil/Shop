import 'package:flutter/material.dart';
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
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
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
            SizedBox(height: 20),
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
            SizedBox(height: 20),
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
    );
  }
}

// Déplacez la classe CategoryTitle en dehors de _HomeState
class CategoryTitle extends StatelessWidget {
  final String image;
  CategoryTitle({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
