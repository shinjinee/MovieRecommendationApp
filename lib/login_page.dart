import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'api_call_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/login_bg.webp',
            ),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.dstATop),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              color: Colors.black38,
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: "Email ID",
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffFF271AE0),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(20.0),
              color: Colors.black38,
              child: TextField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffFF271AE0),
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),


            Center(
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black87),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => APICall()),
                    );
                  },
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                      child: Text("LOGIN"))),
            )
          ],
        ),
      ),
    );
  }
}