import 'package:portafolio/ui/theme.dart';
import 'package:portafolio/ui/widgets/text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String text;
  VoidCallback? onPressed;
  Color buttonColor;
  Color textColor;
  double height;
  double percentWidth;
  double fontSize;
  bool hasBorder;
  bool hasIcon;
  bool isTextBold;
  Color borderColor;
  double borderRadius;
  IconData icon;
  CustomButton(
      {Key? key,
      required this.text,
      this.onPressed,
      this.buttonColor = primary,
      this.textColor = white,
      this.height = 60,
      this.percentWidth = 0.5,
      this.fontSize = 16,
      this.hasBorder = false,
      this.hasIcon = false,
      this.isTextBold = false,
      this.borderColor = white,
      this.borderRadius = 30,
      this.icon = Icons.search})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return SizedBox(
      width: _size.width * percentWidth,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(1),
          backgroundColor: onPressed != null
              ? MaterialStateProperty.all<Color>(buttonColor)
              : MaterialStateProperty.all<Color>(grey),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              side: hasBorder
                  ? BorderSide(
                      color: borderColor,
                    )
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (hasIcon)
              Icon(
                icon,
                color: textColor,
              ),
            Expanded(
              child: TextWidget(
                text: text,
                color: textColor,
                fontWeight: isTextBold ? FontWeight.bold : FontWeight.normal,
                fontSize: fontSize,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
