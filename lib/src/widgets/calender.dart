import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot/src/appcolors/colors.dart';

class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('January, 23 2021',style: TextStyle(
                      fontSize: 11.sp,color: AppTheme.colors.text
                  ),),
                  Text('Today',style: TextStyle(
                      fontWeight: FontWeight.w500,fontSize: 18.sp ,color: AppTheme.colors.darktext
                  ),),
                ],
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Container(
                  width: 120.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'TIMELINE',
                        style: TextStyle(
                            fontSize: 11.sp, fontWeight: FontWeight.w500,color: AppTheme.colors.text),
                      ),
                      Icon(Icons.arrow_drop_down_sharp)
                    ],
                  ),
                ),
              ) ,
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Container(
                  width: 100.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset('assets/svg/calender.svg')  ,
                      Text(
                        'JAN , 2021',
                        style: TextStyle(
                            fontSize: 11.sp, fontWeight: FontWeight.w500,color: AppTheme.colors.text),
                      ),

                    ],
                  ),
                ),
              ) ,
            ],
          ),
        ),

        CalendarTimeline(
          initialDate: DateTime(2021, 1, 23,),
          firstDate: DateTime(2021, 1, 20),
          lastDate: DateTime(2021, 1, 30),
          onDateSelected: (date) => print(date),
          leftMargin: 20,dayNameColor: AppTheme.colors.darkGreen,
          shrink: false,

          // monthColor: Colors.blueGrey,
          dayColor: AppTheme.colors.text,
          activeDayColor: AppTheme.colors.darkGreen,
          activeBackgroundDayColor: Colors.transparent,
          dotsColor: AppTheme.colors.darkGreen,
          // selectableDayPredicate: (date) => date.day != 23,
          locale: 'en_ISO',
        ),
      ],
    );
  }
}
