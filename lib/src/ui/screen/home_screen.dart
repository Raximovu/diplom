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
  WidgetModel(
    id: 1,
    image: "assets/images/1.jpg",
    name: "Qiziqarli Geografiya",
  ),
  WidgetModel(
    id: 2,
    image: "assets/images/2.jpg",
    name: "Olam",
  ),
  WidgetModel(
    id: 3,
    image: "assets/images/3.jpg",
    name: "Sirlarini o'rganish",
  ),
  WidgetModel(
    id: 4,
    image: "assets/images/4.jpg",
    name: "Dunyo o'rganish",
  ),
  WidgetModel(
    id: 5,
    image: "assets/images/5.jpg",
    name: "Dunyo Qiziqarli o'rganish",
  ),
  WidgetModel(
    id: 6,
    image: "assets/images/6.jpg",
    name: "Qiziqarli Sirlarini o'rganish",
  ),
  WidgetModel(
    id: 7,
    image: "assets/images/7.jpg",
    name: "Geografiya Sirlarini o'rganish",
  ),
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
        itemCount: (data.length + 1) ~/ 2,
        padding: EdgeInsets.only(
          bottom: 24 * h,
          left: 16 * w,
          right: 16 * w,
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
                  child: BlockWidget(
                    name: data[index * 2].name,
                    image: data[index * 2].image,
                    id: data[index * 2].id,
                  ),
                ),
              ),
              SizedBox(width: 16 * w),
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
                        child: BlockWidget(
                          name: data[index * 2 + 1].name,
                          id: data[index * 2 + 1].id,
                          image: data[index * 2 + 1].image,
                        ),
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}
