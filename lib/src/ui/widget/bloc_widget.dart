import 'package:diplom/src/utils/app_theme.dart';
import 'package:diplom/src/utils/utils.dart';
import 'package:flutter/material.dart';

class BlockWidget extends StatefulWidget {
  final int id;
  final String name;
  final String image;

  const BlockWidget({
    Key? key,
    required this.name,
    required this.image,
    required this.id,
  }) : super(key: key);

  @override
  State<BlockWidget> createState() => _BlockWidgetState();
}

class _BlockWidgetState extends State<BlockWidget> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);
    return Container(
      height: (MediaQuery.of(context).size.width - 24 * w) / 2,
      decoration: BoxDecoration(
        color: AppTheme.green,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 40,
            spreadRadius: 0.2,
            color: AppTheme.green.withOpacity(0.5),
            offset: Offset(0, 8 * h),
          ),
        ],
      ),
      margin: EdgeInsets.only(
        top: 24 * h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(
              widget.image,
              height: (MediaQuery.of(context).size.width - 48 * w) / 2 - 40,
              width: (MediaQuery.of(context).size.width - 48 * w) / 2,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: 8 * w,
                right: 4 * w,
                bottom: 4 * h,
                top: 4 * h,
              ),
              child: Text(
                widget.name,
                maxLines: 2,
                style: const TextStyle(
                  color: AppTheme.whiteScreen,
                  fontFamily: AppTheme.fontFamily,
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  letterSpacing: 0.4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
