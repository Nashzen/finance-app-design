import 'package:financial_design/app/components/shareds/custom_text.dart';
import 'package:financial_design/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Icon icon;

  CustomButton({this.buttonText, this.icon});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: lightGrey),
        child: InkWell(
          onTap: () {},
          splashColor: lightPurple,
          hoverColor: lightPurple,
          focusColor: lightPurple,
          highlightColor: lightPurple,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: buttonText == null ? 'Botao' : buttonText,
                  fontSize: 16,
                  textAlign: TextAlign.center,
                  textColor: Colors.white,
                ),
                SizedBox(width: 3),
                icon == null ? SizedBox.shrink() : icon
              ],
            ),
          ),
        ),
      ),
    );
  }
}
