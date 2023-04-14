import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot/src/appcolors/colors.dart';

class Ordercard extends StatelessWidget {
  const Ordercard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Container(
          height: 140.h,
          width: 328.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New order created',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontWeight: FontWeight.w500,
                          color: AppTheme.colors.text, fontSize: 16.sp),
                    ),
                    Text(
                      'New Order created with Order',style: TextStyle(
                      fontSize: 12.sp,
                      color: AppTheme.colors.text1
                    ),
                    ),
                    Text(
                      '09:00 AM',
                      style: TextStyle(
                          color: AppTheme.colors.lightOrange,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: AppTheme.colors.lightOrange,
                    ),
                  ],
                ),
                Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: AppTheme.colors.lightOrange,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      'assets/svg/ordercard.svg',
                      fit: BoxFit.fitHeight,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
