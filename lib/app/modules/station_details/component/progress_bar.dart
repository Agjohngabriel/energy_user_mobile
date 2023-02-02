
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required this.dx,
    required this.rate,
    required this.index,
  }) : super(key: key);

  final double dx;
  final double rate;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(index.toString()),
        SizedBox(width: 10,),
        Stack(
          children: [
            Container(
              width: dx*0.5,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300
              ),
            ),
          Container(
              width: dx*rate,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber
              ),
            ),
          ],
        )
      ],
    );
  }
}
