import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(height: 40),
          Center(
            child: Text(
              'Log in',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Outfit Black',
                  color: Colors.green
              )
            ),
          ),
          SizedBox(height: 250),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                fillColor: Colors.grey,
                filled: true,
                prefixIcon: Icon(Icons.alternate_email, color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white12),
                  borderRadius: BorderRadius.circular(10),
                )
              ) ,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  fillColor: Colors.grey,
                  filled: true,
                  prefixIcon: Icon(Icons.password, color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white12),
                    borderRadius: BorderRadius.circular(300),
                  ),
              ) ,
            ),
          ),
          SizedBox(height: 250),
          Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal,
              ),
              child: Center(child: Text('Sign in'))),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have an account?',
                style: TextStyle(
                    color: Colors.green
                )
              ),
              Text(
                'Sign up',
                style: TextStyle(
                    color: Colors.green
              )
          ),
            ],
          ),
        ],
      ),
    ));
  }
}
