import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Networking.dart';
import 'show_recommendations.dart';

class APICall extends StatefulWidget {
  const APICall({Key? key}) : super(key: key);

  @override
  _APICallState createState() => _APICallState();
}

class _APICallState extends State<APICall> {
  Networking model = Networking();
  late String movieName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20.0),
            color: Colors.black12,
            child: TextField(
              onChanged: (value) {
                movieName = value;
              },
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
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
          ElevatedButton(
            onPressed: () async{
              String rec = await model.get_movie(movieName);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Recommendations(rec: rec)),
              );
              // print(movieName);
            },
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Text("Get Recommendations")),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
