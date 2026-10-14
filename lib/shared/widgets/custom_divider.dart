import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1,
      color: Colors.black,
      indent: 10,      // বাঁদিক থেকে ৪০ কমবে
      endIndent: 10,   // ডানদিক থেকে ৪০ কমবে
    );
  }
}