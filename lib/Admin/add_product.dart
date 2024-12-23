import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';
import 'package:shop/widget/support_widget.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final ImagePicker _picker = ImagePicker();
  File? selectedImage;
  TextEditingController namecontroller = new TextEditingController();

  Future getImage() async {
    var image = await _picker.pickImage(source: ImageSource.gallery);
    selectedImage = File(image!.path);
    setState(() {});
  }

  uploadItem() {
    if (selectedImage != null && namecontroller.text != "") {
      String addId = randomAlphaNumeric(10);
    }
  }

  String? value;
  final List<String> categoryitem = ["watch", "laptop", "TV", 'Headphone'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Add Product",
          style: AppWidget.semiBoldFeildStyle(),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),
            Text(
              "Upload the product image",
              style: AppWidget.lightTextFeildStyle(),
            ),
            SizedBox(height: 20),
            Center(
              child: selectedImage == null
                  ? GestureDetector(
                      onTap: () {
                        getImage();
                      },
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 2.5,
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(Icons.camera_alt),
                      ),
                    )
                  : Center(
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.file(
                            selectedImage!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
            ),
            SizedBox(height: 24),
            Text(
              "Product Name",
              style: AppWidget.lightTextFeildStyle(),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                getImage();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFFececf8),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Product Category",
              style: AppWidget.lightTextFeildStyle(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFececf8),
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  items: categoryitem
                      .map((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: AppWidget.semiBoldFeildStyle(),
                          )))
                      .toList(),
                  onChanged: ((value) => setState(() {
                        this.value = value;
                      })),
                  dropdownColor: Colors.white,
                  hint: Text('Select category'),
                  iconSize: 40,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  value: value,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Add Product", style: TextStyle(fontSize: 25))),
            )
          ],
        ),
      ),
    );
  }
}
