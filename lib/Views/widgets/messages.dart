import 'package:flutter/material.dart';
import 'package:jsoadminpanel/Configs/theme_settings.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key, this.msg, this.type, this.width, this.height})
      : super(key: key);

  final String? msg;
  final String? type;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: (width == 0) ? double.infinity : width,
        height: (height == 0) ? double.infinity : height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: type == 'error'
              ? ERROR_MESSAGE_BG_COLOR
              : SUCCESS_MESSAGE_BG_COLOR,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 7, offset: Offset(2, 2))
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            msg!,
            style: TextStyle(
              color: type == 'error'
                  ? ERROR_MESSAGE_TXT_COLOR
                  : SUCCESS_MESSAGE_TXT_COLOR,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
