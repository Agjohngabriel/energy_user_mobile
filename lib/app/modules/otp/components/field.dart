import 'package:energyone_user/utils/colors.dart';
import 'package:flutter/material.dart';

List otpValue = [0, 0, 0, 0, 0, 0];

Widget otpTextField(BuildContext context, bool autoFocus,
    {
    bool isLast = false,
    bool isFirst = false,
    bool isSecond = false,
    bool isThird = false,
    bool isFourth = false,
    bool isFifth = false,
    }) {
  return Container(
    padding: EdgeInsets.only(top: 10),
    height: MediaQuery.of(context).size.shortestSide * 0.13,
    decoration: BoxDecoration(
      border:  Border.all(color:AppTheme.blue, width: 2),
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      shape: BoxShape.rectangle,
    ),
    child: AspectRatio(
      aspectRatio:  1,
      child: TextField(
        autofocus: autoFocus,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
        maxLines: 1,
        onChanged: (value) {
          if (value.length == 1) {
            if (isFirst) {
              otpValue[0] = value;
            }
            if (isSecond) {
              otpValue[1] = value;
            }
            if (isThird) {
              otpValue[2] = value;
            }
            if (isFourth) {
              otpValue[3] = value;
            }
            if (isFifth) {
              otpValue[4] = value;
            }
            if (isLast) {
              otpValue[5] = value;
              FocusScope.of(context).unfocus();
            } else {
              FocusScope.of(context).nextFocus();
            }
          }
        },
      ),
    ),
  );
}
