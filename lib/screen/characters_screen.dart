import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_app/model/aksara_model.dart';
import 'package:language_app/widget/aksara_widget.dart';

import '../constant/colors.dart';
import '../widget/screen_title_widget.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: 'Aksara Jawa',),
  Tab(text: 'Sandhangan',),
  Tab(text: 'Pasangan',),
  Tab(text: 'Aksara Angka',),
];

var onProgressAksaraTextStyle = TextStyle(
    fontFamily: "Poppins",
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: kCategoryBackground4,
    height: 8);


class CharactersScreen extends StatefulWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen>  with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: ScreenTitleWidget(title: 'Aksara',),
        iconTheme: IconThemeData(
          color: Colors.black45, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 1,
        centerTitle: true,
        toolbarHeight: 60,
        shadowColor: Colors.transparent,
        bottom: TabBar(
          tabs: tabs,
          controller: _tabController,
          labelColor: kCategoryBackground4,
          unselectedLabelColor: Colors.black26,
          isScrollable: true,
          // indicatorColor: kCategoryBackground4.withOpacity(.4),
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0, color: kCategoryBackground4.withOpacity(.7)),
              insets: EdgeInsets.symmetric(horizontal:16.0),
          ),
          labelStyle: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          // indicatorSize: TabBarIndicatorSize(2),
          splashBorderRadius: BorderRadius.circular(50.0),
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height - 200,
            width: MediaQuery.of(context).size.width - 40,
            child: TabBarView(
              physics: BouncingScrollPhysics(),
              children: [
                AksaraWidget(aksara: aksaraDasarList,),
                Text(
                  'Sandhangan',
                  textAlign: TextAlign.center,
                  style: onProgressAksaraTextStyle,
                ),
                Text(
                  'Pasangan',
                  textAlign: TextAlign.center,
                  style: onProgressAksaraTextStyle,
                ),
                Text(
                  'Aksara Angka',
                  textAlign: TextAlign.center,
                  style: onProgressAksaraTextStyle,
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
    )
    );
/*        child: Text(
          'Characters Screen',
          style: TextStyle(
            fontFamily: "poppins",
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: kCategoryBackground4
          ),
        )*//*
,
      ),
    );
*/
  }
}
