import 'package:flutter/material.dart';
import 'widgets.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  // opacity: 0.20,
                  image: AssetImage('asset/images/task3/card_salad.png'),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),
                    RichText(
                      text: TextSpan(
                          text: '                 Welcome',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                          children: [
                            TextSpan(
                                text: '\nOnboard',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 56,
                                    fontWeight: FontWeight.bold)),
                          ]),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Screen2()));
                        }))
                  ]),
            )));
  }
}
