import 'package:flutter/material.dart';
import 'package:ai_talk_app/component/point_notification.dart';

class Message extends StatelessWidget {
  final bool alignLeft;
  final String message;
  final int? point;

  const Message({
    this.alignLeft = true,
    this.point,
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // 왼쪽 정렬일때 전반적으로 어둡게 설정
    final alignment = alignLeft ? Alignment.centerLeft : Alignment.centerRight;
    final bgColor = alignLeft ? Color(0xFFF4F4F4) : Colors.white;
    final border = alignLeft ? Color(0xFFE7E7E7) : Colors.black12;

    return Column(
      children: [
        Align(
          alignment: alignment,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: bgColor,
              border: Border.all(color: border, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                message,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ),
        ),
        // point가 있을때만 PointNotification을 화면에 출력
        if (point != null)
          Align(
            alignment: alignment,
            child: PointNotification(point: point!),
          ),
      ],
    );
  }
}
