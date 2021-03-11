import 'package:financial_design/app/components/dashboard/custom_button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(buttonText: 'Investimentos'),
            SizedBox(width: MediaQuery.of(context).size.width / 10),
            CustomButton(
              buttonText: 'Emprestimos',
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
