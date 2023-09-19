import 'package:flutter/material.dart';

Widget roundedButton({onPress, color, String? title}) {
  return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: color),
          onPressed: onPress,
          child: Text(
            title!,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          )));
}
