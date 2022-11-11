import 'package:diplom/src/utils/app_theme.dart';
import 'package:diplom/src/utils/utils.dart';
import 'package:flutter/material.dart';

class BlockWidget extends StatefulWidget {
  const BlockWidget({Key? key}) : super(key: key);

  @override
  State<BlockWidget> createState() => _BlockWidgetState();
}

class _BlockWidgetState extends State<BlockWidget> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);
    return Container(
      height: (MediaQuery.of(context).size.width - 72 * w) / 2,
      decoration: BoxDecoration(
        color: AppTheme.whiteScreen,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 40,
            spreadRadius: 0.2,
            color: AppTheme.green.withOpacity(0.2),
            offset: Offset(0, 8 * h),
          ),
        ],
      ),
      margin: EdgeInsets.only(
        top: 24 * h,
      ),
    );
  }
}
