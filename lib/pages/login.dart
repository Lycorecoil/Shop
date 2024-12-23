import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop/pages/bottomnav.dart';
import 'package:shop/pages/home.dart';
import 'package:shop/pages/signup.dart';
import 'package:shop/widget/support_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  String email = "", password = "";

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BottomNav()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text("User not found", style: TextStyle(fontSize: 20))));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text("Wrong password", style: TextStyle(fontSize: 20))));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/login.jpg"),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Sign In",
                  style: AppWidget.semiBoldFeildStyle(),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Please enter the details below to  \n                      continue",
                  style: AppWidget.lightTextFeildStyle(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Email",
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else
                        return null;
                    },
                    controller: emailController,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Email"),
                  )),
              SizedBox(height: 30),
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your passeword';
                      } else
                        return null;
                    },
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Password"),
                  )),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot Password?",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                ],
              ),
              SizedBox(height: 40),
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
                  if (_formkey.currentState!.validate()) {
                    setState(() {
                      email = emailController.text;
                      password = passwordController.text;
                    });
                  }
                  userLogin();
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have account? ",
                    style: AppWidget.lightTextFeildStyle(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(" Sign Up",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
