import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class DefaultButton extends GetResponsiveView {
  DefaultButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function()? press;

  @override
  Widget builder() {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Color(0xFFE8F0F9),
        padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      onPressed: press,
      child: screen.isPhone
          ? Column(
              children: [
                Image.asset(imageSrc, height: 40),
                SizedBox(width: kDefaultPadding),
                Text(
                  text,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            )
          : Row(
              children: [
                Image.asset(imageSrc, height: 40),
                SizedBox(width: kDefaultPadding),
                Text(
                  text,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
    );
  }
}
