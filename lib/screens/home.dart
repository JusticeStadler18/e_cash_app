import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_cash_app/data/data.dart';
import 'package:e_cash_app/utilities/math_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
part 'home/home_appbar.dart';
part 'home/balance_and_category.dart';
part 'home/activity_history.dart';
part 'home/menu_drawer.dart';
part 'home/promo_banner.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: MenuDrawer(),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF0399a7),
              Color(0xFF5abb39),
            ],
          ),
        ),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            HomeAppBar(scaffoldKey: _scaffoldKey),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  BalanceAndCategory(scrollController: _scrollController),
                  PromoBanner(),
                  ActivityHistory(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}