import 'package:flutter/material.dart';

class DateDivider extends StatelessWidget {
  final DateTime date;
  const DateDivider({required this.date, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${date.year}년 ${date.month}월 ${date.day}일 ',
      style: TextStyle(color: Colors.black54, fontSize: 12),
      textAlign: TextAlign.center,
    );
  }
}
