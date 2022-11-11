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
var scaffoldKey = GlobalKey<ScaffoldState>();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppTheme.green,
      appBar: AppBar(
        toolbarHeight: 0.0,
        elevation: 0,
        backgroundColor: AppTheme.green,
      ),
      drawer: Drawer(
        backgroundColor: AppTheme.green,
        width: MediaQuery.of(context).size.width - 140 * w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 24 * h),
            Container(
              height: 56 * h,
              width: MediaQuery.of(context).size.width - 116 * w,
              padding: EdgeInsets.only(
                left: 16 * w,
                top: 16 * h,
              ),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppTheme.whiteScreen,
                    width: 1,
                  ),
                ),
              ),
              child: const Text(
                "Interesting Chemistry",
                style: TextStyle(
                  color: AppTheme.white,
                ),
              ),
            ),
            Container(
              height: 56 * h,
              width: MediaQuery.of(context).size.width - 116 * w,
              padding: EdgeInsets.only(
                left: 16 * w,
                top: 16 * h,
              ),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppTheme.whiteScreen,
                    width: 1,
                  ),
                ),
              ),
              child: const Text(
                "Interesting Chemistry",
                style: TextStyle(
                  color: AppTheme.white,
                ),
              ),
            ),
            Container(
              height: 56 * h,
              width: MediaQuery.of(context).size.width - 116 * w,
              padding: EdgeInsets.only(
                left: 16 * w,
                top: 16 * h,
              ),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppTheme.whiteScreen,
                    width: 1,
                  ),
                ),
              ),
              child: const Text(
                "Interesting Chemistry",
                style: TextStyle(
                  color: AppTheme.white,
                ),
              ),
            ),
            Container(
              height: 56 * h,
              width: MediaQuery.of(context).size.width - 116 * w,
              padding: EdgeInsets.only(
                left: 16 * w,
                top: 16 * h,
              ),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppTheme.whiteScreen,
                    width: 1,
                  ),
                ),
              ),
              child: const Text(
                "Interesting Chemistry",
                style: TextStyle(
                  color: AppTheme.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/4.jpg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: AppTheme.green,
                child: Row(
                  children: [
                    Container(
                      height: 56 * w,
                      width: 56 * w,
                      margin: EdgeInsets.only(
                        left: 4 * w,
                        top: 4 * h,
                        bottom: 4 * h,
                      ),
                      decoration: BoxDecoration(
                        color: AppTheme.green,
                        borderRadius: BorderRadius.circular(56),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            scaffoldKey.currentState?.openDrawer();
                          },
                          borderRadius: BorderRadius.circular(56),
                          focusColor: AppTheme.green,
                          splashColor: AppTheme.green.withOpacity(0.8),
                          child: const Center(
                            child: Icon(
                              Icons.menu,
                              color: AppTheme.whiteScreen,
                              size: 28,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          "Kimyo",
                          style: TextStyle(
                            color: AppTheme.whiteScreen,
                            fontFamily: AppTheme.fontFamily,
                            fontWeight: FontWeight.w900,
                            fontSize: 32,
                            letterSpacing: 0.4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 60 * w),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
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
                                    return BlocCategoryScreen(
                                      name: data[index * 2].name,
                                      image: data[index * 2].image,
                                      id: data[index * 2].id,
                                    );
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
                                          return BlocCategoryScreen(
                                            name: data[index * 2 + 1].name,
                                            id: data[index * 2 + 1].id,
                                            image: data[index * 2 + 1].image,
                                          );
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
