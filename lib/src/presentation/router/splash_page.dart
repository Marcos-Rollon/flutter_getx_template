import 'package:flutter/material.dart';
import '../ui_constants/ui_constants.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      this._setup();
    });
    return Container(
      color: AppColors.mainColor,
      child: CircularProgressIndicator(),
    );
  }

  void _setup() {}
}
