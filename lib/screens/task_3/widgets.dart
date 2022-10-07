import 'package:flutter/material.dart';

MaterialButton button(String text, Function() push) => MaterialButton(
      color: Color(0xFF147617),
      child: Text(text),
      onPressed: push,
    );
