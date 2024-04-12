import 'package:flutter/material.dart';

class priceapi extends StatefulWidget {
  _priceapiState createState() => _priceapiState();
}

class _priceapiState extends State<priceapi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue[100],
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 30,
                            )),
                        SizedBox(width: 5),
                        Text(
                          "User_1",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Text("100")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 30,
                            )),
                        SizedBox(width: 5),
                        Text(
                          "User_1",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Text("100")
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
