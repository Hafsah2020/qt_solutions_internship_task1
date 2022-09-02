import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Color.fromARGB(255, 68, 62, 62),
        title: 'QT solutions',
        home: Screen());
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.keyboard_arrow_left_outlined, color: Colors.grey),
          title: Text(
            'Billing Address',
            style: TextStyle(color: Colors.grey),
          ),
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 32,
            horizontal: 16
          ),
          child: Column(
            children: [
              address('Billing Address', '''No 763
Meal Way Crescent,
DownTown Greenwood Lagos,
Nigeria'''),
              address('Delivery Address', '''No 763
Meal Way Crescent,
DownTown Greenwood Lagos,
Nigeria'''),
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      'contact Details',
                      style: TextStyle(color: Colors.green),
                    ),
                    Spacer(),
                    Icon(Icons.edit),
                  ]),
                  Divider(),
                  SizedBox(
                    height: 16,
                  ),
                  contact(Icons.mail, 'Yourname@email.com'),
                  SizedBox(
                    height: 16,
                  ),
                  contact(Icons.phone, '+234 709763373333')
                ],
              )
            ],
          ),
        ));
  }
}

Row contact(IconData icon, String contactValue) => Row(
      children: [Icon(icon), SizedBox(width: 16), Text(contactValue)],
    );
Column address(String title, String address) => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(title, style: TextStyle(color: Colors.green)),
          Spacer(),
          Icon(Icons.edit),
        ]),
        Divider(),
        Text(
          address,
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 32),
      ],
    );
