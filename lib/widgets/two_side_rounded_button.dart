
import 'package:flutter/material.dart';

import '../consttants.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String? text;
  final double? radious;
  final Function()? press;
  const TwoSideRoundedButton({
    Key? key,
    this.text,
    this.radious = 29,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding:const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color:const Color(0xffEFB3A6),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radious!),
            bottomRight: Radius.circular(radious!),
          ),
        ),
        child: Text(
          text!,
          style:const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
