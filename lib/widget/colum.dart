import 'package:flutter/cupertino.dart';
import 'package:freefentasy/theam/appstyle.dart';

class CustomColumn extends StatelessWidget {
  final String text;
  final String subtext;
  final TextStyle? style;
  final TextStyle? textstyle;

  const CustomColumn({
    required this.text,
    required this.subtext,
    this.style,
    this.textstyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: style),
        Text(
          subtext,
          style: textstyle,
        ),
      ],
    );
  }
}
