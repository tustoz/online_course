import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  final String title;

  const CustomButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        FadeInUp(
          delay: const Duration(milliseconds: 1500),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(title),
              style: TextButton.styleFrom(
                primary: kBackgroundColor,
                textStyle: regular18,
                backgroundColor: kShadeColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
