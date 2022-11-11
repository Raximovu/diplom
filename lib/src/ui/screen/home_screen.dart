import 'package:diplom/src/model/widget_model.dart';
import 'package:diplom/src/ui/screen/bloc_category_screen.dart';
import 'package:diplom/src/ui/widget/bloc_widget.dart';
import 'package:diplom/src/utils/app_theme.dart';
import 'package:diplom/src/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<WidgetModel> data = [
  WidgetModel(id: 1, picName: "one"),
  WidgetModel(id: 2, picName: "two"),
  WidgetModel(id: 3, picName: "three"),
  WidgetModel(id: 4, picName: "four"),
  WidgetModel(id: 5, picName: "five"),
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);
    return Scaffold(
      backgroundColor: AppTheme.whiteScreen,
      appBar: AppBar(
        toolbarHeight: 0.0,
        elevation: 0,
        backgroundColor: AppTheme.whiteScreen,
      ),
      body: ListView.builder(
        itemCount: 4,
        padding: EdgeInsets.only(
          bottom: 32 * h,
          left: 24 * w,
          right: 24 * w,
        ),
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) {
                          return const BlocCategoryScreen();
                        },
                      ),
                    );
                  },
                  child: const BlockWidget(),
                ),
              ),
              SizedBox(width: 24 * w),
              Expanded(
                child: index * 2 + 1 >= data.length
                    ? Container()
                    : GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) {
                                return const BlocCategoryScreen();
                              },
                            ),
                          );
                        },
                        child: const BlockWidget(),
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}
