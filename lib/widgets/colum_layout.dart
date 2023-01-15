import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  // final bool? isColor;
  final String firstText;
  final String secondText;
  const AppColumnLayout({Key? key, required this.firstText, required this.secondText, required this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: Styles.headlineStyle3.copyWith(color: Colors.black)),
        Gap(AppLayout.getHeight(5)),
        Text(secondText, style:Styles.headlineStyle4.copyWith(color: Colors.grey.shade500),),
      ],
    );
  }
}
