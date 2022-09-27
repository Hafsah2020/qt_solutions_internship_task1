import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            // Center(child: Text('A')));
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('asset/images/task2.png'),
                )),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Body()));
  }
}

class Body extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            right: 0,
            bottom: 208,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xB3E7B944),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(300)),
              ),
              height: 146,
              width: 269,
            )),
        Positioned(
            bottom: 0,
            child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(239, 153, 6, 244),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(300)),
                ),
                height: 270,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 90,
                        left: 68,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                    text: 'My',
                                    style: TextStyle(
                                        fontSize: 75, color: Color(0xB3E7B944)),
                                    children: [
                                      TextSpan(
                                        text: 'Shop',
                                        style: TextStyle(
                                            fontSize: 75, color: Colors.white),
                                      )
                                    ]),
                              ),
                              Text(
                                'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry',
                              )
                            ]))
                  ],
                ))),
      ],
    );
  }
}
