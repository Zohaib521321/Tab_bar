import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yotube/resources/Url_launcher.dart';
import 'package:yotube/view/bloging/Cpp.dart';
import 'package:yotube/view/bloging/Dart.dart';
import 'package:yotube/view/bloging/Errors_In_Flutter.dart';
import 'package:yotube/view/bloging/Firebase.dart';
import 'package:yotube/view/bloging/Flutter.dart';
import 'package:yotube/view/bloging/Java.dart';
import 'package:yotube/view/bloging/MVVM.dart';
import 'package:yotube/view/bloging/Restful_Api.dart';
import 'package:yotube/view/bloging/all_courses.dart';
import 'package:yotube/view/bloging/tips.dart';
import '../../../resources/App_color.dart';
class Blog_page extends StatefulWidget {
  const Blog_page({Key? key}) : super(key: key);
  @override
  State<Blog_page> createState() => _Blog_pageState();
}
class _Blog_pageState extends State<Blog_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey200,
      body: DefaultTabController(
        length: 10,
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context,bool isscrollavle){
            return <Widget>[
              SliverAppBar(
                title: const Text('Blogs'),
                floating: true,
                snap: true,
                pinned: true,
                backgroundColor: AppColor.grey,
                forceElevated: isscrollavle,
                bottom: const TabBar(
                  indicatorWeight:  5.0,
                  indicatorColor: AppColor.white,
                  isScrollable: true,
                  tabs: <Tab>[
                    Tab(text: 'All Courses'),
                    Tab(text: 'Dart'),
                    Tab(text: 'Flutter'),
                    Tab(text: 'Firebase'),
                    Tab(text: 'Restful Api'),
                    Tab(text: 'MVVM'),
                    Tab(text: 'Common Errors'),
                    Tab(text: "Tips",),
                    Tab(text: 'C++'),
                    Tab(text: 'Java'),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              // Add your widgets for Category 1 here
              all_course(),
              // Add your widgets for Category 2 here
              Dart(),
              // Add your widgets for Category 3 here
              Flutter(),
              // Add your widgets for Category 4 here
              Firebase(),
              // Add your widgets for Category 5 here
              Restful_Api(),
              // Add your widgets for Category 6 here
              MVVM(),
              // Add your widgets for Category 7 here
              Errors_In_Flutter(),
              Flutter_tips(),
              // Add your widgets for Category 8 here
              Cpp(),
              java(),

            ],
          ),
        ),
      ),
    );
  }
}