import 'package:flutter/material.dart';
import 'package:shop/widget/support_widget.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ProductDetailState();
  }
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfef5f1),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(Icons.arrow_back_ios_new_outlined)),
                ),
                Center(
                  child: Image.asset(
                    "images/headphone2.png",
                    height: 400,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "headphone",
                          style: AppWidget.boldTextFeildStyle(),
                        ),
                        Text(
                          "100Fcfa",
                          style: TextStyle(
                              color: Color(0xFFfd6F3e),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Description",
                      style: AppWidget.semiBoldFeildStyle(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Ce produit est exellent Ce produit est exellent Ce produit est exellent Ce produit est exellent Ce produit est exellentCe produit est exellentCe produit est exellent Ce produit est exellent ",
                      //style: AppWidget.semiBoldFeildStyle(),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                          color: Color(0xFFfd6F3e),
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Acheter",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
