import 'package:flutter/material.dart';
import 'widgets.dart';
import 'screen_2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 8),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                  ),
                  Container(
                    foregroundDecoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/images/task3/card.png'),
                            fit: BoxFit.fill)),
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.55,
                        width: MediaQuery.of(context).size.width),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle_sharp,
                          color: Colors.white,
                        ),
                        Icon(Icons.circle_sharp, color: Colors.white),
                        Icon(Icons.circle_sharp, color: Colors.white),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: 12,
                      child: button('Get started', () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Screen2()));
                      }))
                ])));
  }
}
