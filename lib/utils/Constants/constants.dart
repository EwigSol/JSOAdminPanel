// Error SnackBar Method

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:jsoadminpanel/utils/Constants/theme.dart';

showErrorSnackBar(context, width, title, message) {
  var snackBar = SnackBar(
      padding: const EdgeInsets.all(20),
      backgroundColor: AppTheme.snakBarBackgroundColor,
      width: width * 0.3,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      elevation: 0,
      content: AwesomeSnackbarContent(
        isDesktop: true,
        xlarge: false,
        title: title,
        _double: 0.025,
        message: message,
        fontSize: 0.015,
        contentType: ContentType.failure,
      ));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

showSuccessSnackBar(context, width, title, message) {
  var snackBar = SnackBar(
      padding: const EdgeInsets.all(20),
      backgroundColor: AppTheme.snakBarBackgroundColor,
      width: width * 0.3,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      elevation: 0,
      content: AwesomeSnackbarContent(
        isDesktop: true,
        xlarge: false,
        title: title,
        _double: 0.020,
        message: message,
        fontSize: 0.015,
        contentType: ContentType.success,
      ));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
