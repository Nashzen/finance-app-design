import 'package:financial_design/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class InfoContainer extends StatelessWidget {
  final Icon icon;
  final String headerText;
  final String valueText;

  InfoContainer({this.icon, this.headerText, this.valueText});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
            color: lightGrey,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon == null ? SizedBox.shrink() : icon,
              SizedBox(height: 10),
              CustomText(
                text: headerText == null ? 'Example' : headerText,
                textAlign: TextAlign.start,
                fontSize: 14,
                maxLines: 3,
                textOverflow: TextOverflow.ellipsis,
                textColor: purpleTextColors,
              ),
              SizedBox(height: 10),
              CustomText(
                text: valueText == null ? '\$0,00' : valueText,
                textAlign: TextAlign.start,
                fontSize: 18,
                maxLines: 3,
                textOverflow: TextOverflow.ellipsis,
                textColor: lightGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
