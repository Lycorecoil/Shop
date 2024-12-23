import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shop/Admin/home_admin.dart';
import 'package:shop/widget/support_widget.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  TextEditingController usernamecontroller = new TextEditingController();
  TextEditingController userpasswordcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/login.jpg"),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Admin Panel",
                style: AppWidget.semiBoldFeildStyle(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Username",
              style: AppWidget.semiBoldFeildStyle(),
            ),
            Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color(
                      0xFFF4FF9,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Username"),
                )),
            SizedBox(height: 50),
            Text(
              "Password",
              style: AppWidget.semiBoldFeildStyle(),
            ),
            Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color(
                      0xFFF4FF9,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your passeword';
                    } else
                      return null;
                  },
                  controller: userpasswordcontroller,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Password"),
                )),
            SizedBox(height: 150),

            /* Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )*/
            GestureDetector(
              onTap: () {
                loginAdmin();
              },
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  loginAdmin() {
    FirebaseFirestore.instance.collection("Admin").get().then((snapshot) {
      snapshot.docs.forEach((result) {
        if (result.data()['username'] != usernamecontroller.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "Your Id is not correct ",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ));
        } else if (result.data()['password'] !=
            userpasswordcontroller.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "Password incorrect ",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ));
        } else {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeAdmin()));
        }
      });
    });
  }
}
