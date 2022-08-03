import 'package:flutter/material.dart';
import 'package:jsoadminpanel/utils/Constants/theme.dart';

class CreateCategory extends StatelessWidget {
  const CreateCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.accentColor,
      body: Container(
        child: const Text('Create Category'),
      ),
    );
  }
}
