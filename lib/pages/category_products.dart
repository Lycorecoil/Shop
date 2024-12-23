import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shop/widget/support_widget.dart';

class CategoryProducts extends StatefulWidget {
  const CategoryProducts({super.key});

  @override
  State<CategoryProducts> createState() => _CategoryProductsState();
}

class _CategoryProductsState extends State<CategoryProducts> {
  Stream? CategoryStream;
  

  Widget allProduct() {
    return StreamBuilder(
        stream: CategoryStream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0),
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        Image.network(
                          ds["Image"],
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          ds['Name'],
                          style: AppWidget.semiBoldFeildStyle(),
                        ),
                        Row(
                          children: [
                            Text(
                              ds['price'] + "\F",
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
                    );
                  },
                )
              : Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      appBar: AppBar(
        backgroundColor: Color(0xfff2f2f2),
      ),
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
