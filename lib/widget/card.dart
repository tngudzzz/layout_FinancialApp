import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String name;
  final String count;
  final String won;
  final IconData moneyIcon;
  final Color textColor;
  final Color bgColor;

  const MyWidget({
    super.key,
    required this.bgColor,
    required this.count,
    required this.moneyIcon,
    required this.name,
    required this.textColor,
    required this.won,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      count,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      won,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 12),
                child: Icon(
                  moneyIcon,
                  color: textColor,
                  size: 88,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
