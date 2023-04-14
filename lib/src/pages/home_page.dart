import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot/src/appcolors/colors.dart';
import 'package:mypcot/src/widgets/appbar.dart';
import 'package:mypcot/src/widgets/calender.dart';
import 'package:mypcot/src/widgets/card2.dart';
import 'package:mypcot/src/widgets/card3.dart';
import 'package:mypcot/src/widgets/cards.dart';
import 'package:mypcot/src/widgets/order_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            elevation: 5,
            backgroundColor: AppTheme.colors.darktext,

            onPressed: () {},
            child: Icon(Icons.add), //icon inside button
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(), //shape of notch
            notchMargin:
                5, //notche margin between floating button and bottom appbar
            child: Container(
              height: 50.h,
              child: Row(
                //children inside bottom appbar
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg/home.svg'),
                      Text(
                        'Home',
                        style: TextStyle(fontSize: 12.sp),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg/customer.svg'),
                      Text(
                        'Customer',
                        style: TextStyle(fontSize: 12.sp),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg/khata.svg'),
                      Text(
                        'Khata',
                        style: TextStyle(fontSize: 12.sp),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg/order.svg'),
                      Text(
                        'Order',
                        style: TextStyle(fontSize: 12.sp),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          body: ListView(
            children: [
              AppBars(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Welcome, Mypcot !!',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppTheme.colors.text),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'here is your dashboard....',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: AppTheme.colors.text1,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                            height: 52.h,
                            width: 52.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: SvgPicture.asset('assets/svg/search.svg')))
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Cards(
                      title1: 'You have 3 active \norders from',
                      backgroundcolor: AppTheme.colors.blue,
                      backgroundcolor1: AppTheme.colors.orange,
                      title: 'Orders',
                      logo: SvgPicture.asset('assets/svg/b.svg',
                          fit: BoxFit.fill),
                      title2: '02 pending orders from',
                    ),
                    CardsTwo(
                      backgroundcolor: AppTheme.colors.yellow,
                      backgroundcolor1: AppTheme.colors.blue,
                      title: 'Subscriptions',
                      logo: SvgPicture.asset('assets/svg/subscription.svg'),
                      title1: '03 Deleveries',
                      title2: '10 Active Subscriptions',
                      title3: '119 Pending Deleveries',
                    ),
                    CardsThree(
                      backgroundcolor: AppTheme.colors.green,
                      backgroundcolor1: AppTheme.colors.pink,
                      title: 'View Customers',
                      logo: SvgPicture.asset('assets/svg/a.svg',fit: BoxFit.fill,), title1: '15 New Customer', title2: '', title3: '10 Active Customer',
                    )
                  ],
                ),
              ),
              Calender(),
              Ordercard()
            ],
          )),
    );
  }
}
